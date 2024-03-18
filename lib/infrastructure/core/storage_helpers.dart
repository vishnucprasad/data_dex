import 'package:data_dex/domain/auth/i_auth_facade.dart';
import 'package:data_dex/domain/core/not_authenticated_error.dart';
import 'package:data_dex/injection.dart';
import 'package:firebase_storage/firebase_storage.dart';

extension StorageX on FirebaseStorage {
  Future<Reference> userRef() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return getIt<FirebaseStorage>().ref('users').child(user.id.getOrCrash());
  }
}
