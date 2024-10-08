import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/auth/i_auth_facade.dart';
import 'package:data_dex/domain/core/not_authenticated_error.dart';
import 'package:data_dex/injection.dart';

extension FireStoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get loansCollection => collection('loans');
}
