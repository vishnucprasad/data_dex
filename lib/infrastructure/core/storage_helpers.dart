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

  Future<void> deleteFiles(Reference ref) async {
    try {
      final listResult = await ref.listAll();

      await Future.forEach(listResult.items, (Reference ref) async {
        await ref.delete();
      });

      await Future.forEach(listResult.prefixes, (Reference prefixRef) async {
        await deleteFiles(
          getIt<FirebaseStorage>().ref().child(prefixRef.fullPath),
        );
      });
    } catch (_) {
      rethrow;
    }
  }
}
