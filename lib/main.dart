import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/app/app.bottomsheets.dart';
import 'package:stacked_mobile_starter/app/app.dialogs.dart';
import 'package:stacked_mobile_starter/app/app.locator.dart';
import 'package:stacked_mobile_starter/app/app.router.dart';
import 'package:stacked_mobile_starter/ui/common/app_themes.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  await ThemeManager.initialise();
  setupDialogUi();
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
      builder: (context, lightTheme, dartTheme, themeMode) {
        return MaterialApp(
          theme: lightTheme,
          darkTheme: dartTheme,
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
