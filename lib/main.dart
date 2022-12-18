import 'package:cmixer/tatao_body/presentation/manager/constant.dart';
import 'package:cmixer/tatao_body/presentation/pages/add_post_screen.dart';
import 'package:cmixer/tatao_body/presentation/pages/main_posts_screen.dart';
import 'package:cmixer/tatao_body/presentation/widgets/main_post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'tatao_body/presentation/pages/splash_screen.dart';
import 'generated/l10n.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //     overlays: [SystemUiOverlay.top]);

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarDividerColor: Colors.transparent,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.dark,
  ));

  runApp(const Cmix());
}

class Cmix extends StatelessWidget {
  const Cmix({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /// Portrait orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    /// Hide status bar and navigation bar (overlays: [ SystemUiOverlay.top ])
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      /// Add localization
      supportedLocales: S.delegate.supportedLocales,

      debugShowCheckedModeBanner: false,
      //home: const MainPage(),
      home: const AddPostScreen(),
      //home: const SplashScreen(),
    );
  }
}
