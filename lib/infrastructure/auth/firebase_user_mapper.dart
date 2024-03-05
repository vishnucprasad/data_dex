import 'package:data_dex/domain/auth/models/data_dex_user.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainX on User {
  DataDexUser toDomain() {
    return DataDexUser(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
