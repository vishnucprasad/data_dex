import 'package:data_dex/firebase_options.dart';
import 'package:data_dex/injection.dart';
import 'package:data_dex/presentation/data_dex_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const DataDexApp());
}
