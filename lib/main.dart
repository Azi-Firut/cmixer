import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'tatao_body/presentation/pages/splash_screen.dart';
import 'generated/l10n.dart';

void main() {
  runApp(const C_mix());
}

class C_mix extends StatelessWidget {
  const C_mix({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      // Add localization
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const SplashScreen(),
    );
  }
}
