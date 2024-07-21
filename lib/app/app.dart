import 'package:stacked_mobile_starter/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:stacked_mobile_starter/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:stacked_mobile_starter/ui/views/home/home_view.dart';
import 'package:stacked_mobile_starter/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:stacked_mobile_starter/ui/views/onboarding/onboarding_view.dart';
import 'package:stacked_mobile_starter/ui/views/login_email/login_email_view.dart';
import 'package:stacked_mobile_starter/ui/views/login/login_view.dart';
import 'package:stacked_mobile_starter/services/json_resource_service.dart';
import 'package:stacked_mobile_starter/ui/bottom_sheets/countries/countries_sheet.dart';
import 'package:stacked_mobile_starter/ui/views/mobile_signup/mobile_signup_view.dart';
import 'package:stacked_mobile_starter/ui/views/verify_mobile/verify_mobile_view.dart';
import 'package:stacked_mobile_starter/ui/views/wrapper/wrapper_view.dart';
import 'package:stacked_mobile_starter/ui/views/search/search_view.dart';
import 'package:stacked_mobile_starter/ui/views/profile/profile_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    AdaptiveRoute(
      page: StartupView,
      initial: true,
    ),
    AdaptiveRoute(page: OnboardingView),
    AdaptiveRoute(page: LoginEmailView),
    AdaptiveRoute(page: LoginView),
    AdaptiveRoute(page: MobileSignupView),
    AdaptiveRoute(page: VerifyMobileView),
    AdaptiveRoute(page: WrapperView),
    AdaptiveRoute(page: HomeView),
    AdaptiveRoute(page: SearchView),
    AdaptiveRoute(page: ProfileView),
// @stacked-route
  ],
  dependencies: [
    Singleton(
      classType: ThemeService,
      resolveUsing: ThemeService.getInstance,
    ),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: JsonResourceService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    StackedBottomsheet(classType: CountriesSheet),
// @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
  logger: StackedLogger(),
)
class App {}
