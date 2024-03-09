import 'package:auto_route/auto_route.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/add_applicant_page.dart';
import 'package:data_dex/presentation/pages/add_co_applicant_page/add_co_applicant_page.dart';
import 'package:data_dex/presentation/pages/add_guarenter_page/add_guarenter_page.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/add_loan_particulars_page.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/add_miscellaneous_details_page.dart';
import 'package:data_dex/presentation/pages/home_page/home_page.dart';
import 'package:data_dex/presentation/pages/signin_page/signin_page.dart';
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
        page: SigninRoute.page,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      ),
      CustomRoute(
        page: HomeRoute.page,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      ),
      CustomRoute(
        page: AddApplicantRoute.page,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      ),
      CustomRoute(
        page: AddCoApplicantRoute.page,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      ),
      CustomRoute(
        page: AddGuarenterRoute.page,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      ),
      CustomRoute(
        page: AddLoanParticularsRoute.page,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      ),
      CustomRoute(
        page: AddMiscellaneousDetailsRoute.page,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      ),
    ];
  }
}
