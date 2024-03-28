import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/core/debouncer.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  getIt.registerSingleton<AppRouter>(AppRouter());
  getIt.registerSingleton<ImagePicker>(ImagePicker());
  getIt.registerSingleton<Debouncer>(Debouncer(milliseconds: 1000));
  getIt.registerSingleton<PackageInfo>(await PackageInfo.fromPlatform());
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  getIt.registerLazySingleton<GoogleSignIn>(() => GoogleSignIn());
  getIt.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );
  getIt.registerLazySingleton<FirebaseStorage>(
    () => FirebaseStorage.instance,
  );
  getIt.init();
}
