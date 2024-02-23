import 'package:data_dex/presentation/router/app_router.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  getIt.registerSingleton<AppRouter>(AppRouter());
  getIt.init();
}
