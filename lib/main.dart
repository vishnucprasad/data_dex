import 'package:data_dex/injection.dart';
import 'package:data_dex/presentation/data_dex_app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await configureDependencies();
  runApp(const DataDexApp());
}
