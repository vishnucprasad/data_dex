import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/auth/failures/auth_failure.dart';
import 'package:data_dex/domain/auth/models/credentials.dart';
import 'package:data_dex/domain/auth/models/data_dex_user.dart';

abstract class IAuthFacade {
  Future<Option<DataDexUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signupWithEmailAndPassword({
    required Credentials credentials,
  });
  Future<Either<AuthFailure, Unit>> signinWithEmailAndPassword({
    required Credentials credentials,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
