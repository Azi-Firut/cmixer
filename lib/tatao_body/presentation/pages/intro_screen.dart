import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../widgets/side_menu_drawer.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({
    super.key,
  });

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
        title: Text(S.of(context).intro_screen_app_bar_title),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Доступна менюха"),
      ),
    );
  }
}
