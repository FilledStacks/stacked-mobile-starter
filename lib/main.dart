import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked_mobile_starter/app/app.bottomsheets.dart';
import 'package:stacked_mobile_starter/app/app.locator.dart';
import 'package:stacked_mobile_starter/app/app.router.dart';
import 'package:stacked_mobile_starter/ui/common/app_themes.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  await ThemeManager.initialise();
  _initSystemUI();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      lightTheme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      builder: (context, lightTheme, darkTheme, themeMode) {
        return MaterialApp(
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeMode,
          onGenerateRoute: StackedRouter().onGenerateRoute,
          navigatorKey: StackedService.navigatorKey,
          navigatorObservers: [
            StackedService.routeObserver,
          ],
        );
      },
    );
  }
}

void _initSystemUI() {
  // Configure preferred orientation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Configure status bar appearance
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    // Only honored in Android. Ensure dark icons/texts on the status bar along
    // with transparent status bar background
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    // Only honored in iOS. Ensure dark icons and texts on the status bar
    statusBarBrightness: Brightness.light,
  ));
}
