import 'package:auto_route/auto_route.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/add_applicant_page.dart';
import 'package:data_dex/presentation/pages/home_page/home_page.dart';
import 'package:data_dex/presentation/pages/splash_page.dart/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        initial: true,
        page: SplashRoute.page,
      ),
      CustomRoute(
        page: HomeRoute.page,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      ),
      CustomRoute(
        page: AddApplicantRoute.page,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      ),
    ];
  }
}
