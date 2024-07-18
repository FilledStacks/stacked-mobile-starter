import 'package:stacked_mobile_starter/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:stacked_mobile_starter/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:stacked_mobile_starter/ui/views/home/home_view.dart';
import 'package:stacked_mobile_starter/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';
// @stacked-import

@StackedApp(
  routes: [
    AdaptiveRoute(
      page: StartupView,
      initial: true,
    ),
    AdaptiveRoute(page: HomeView),
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
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
