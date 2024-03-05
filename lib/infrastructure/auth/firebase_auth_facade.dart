import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/auth/failures/auth_failure.dart';
import 'package:data_dex/domain/auth/i_auth_facade.dart';
import 'package:data_dex/domain/auth/models/credentials.dart';
import 'package:data_dex/domain/auth/models/data_dex_user.dart';
import 'package:data_dex/injection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:data_dex/infrastructure/auth/firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth = getIt<FirebaseAuth>();
  final GoogleSignIn _googleSignIn = getIt<GoogleSignIn>();

  @override
  Future<Option<DataDexUser>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<Either<AuthFailure, Unit>> signupWithEmailAndPassword({
    required Credentials credentials,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: credentials.emailAddress.getOrCrash(),
        password: credentials.password.getOrCrash(),
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlredyInUse());
      }

      return left(AuthFailure.serverFailure(e.message ?? ""));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signinWithEmailAndPassword({
    required Credentials credentials,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: credentials.emailAddress.getOrCrash(),
        password: credentials.password.getOrCrash(),
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
        return left(const AuthFailure.invalidCredentials());
      }

      return left(AuthFailure.serverFailure(e.message ?? ""));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(AuthFailure.serverFailure(e.message ?? ""));
    }
  }

  @override
  Future<void> signOut() async {
    if (_googleSignIn.currentUser != null) await _googleSignIn.disconnect();
    await _firebaseAuth.signOut();
  }
}
