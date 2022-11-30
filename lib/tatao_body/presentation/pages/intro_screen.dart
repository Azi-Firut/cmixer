import 'package:expandable_menu/expandable_menu.dart';
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
  @override
  void initState() {
    // TODO: implement load firebase data
    super.initState();
  }

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var h_size = MediaQuery.of(context).size.width;
    var v_size = MediaQuery.of(context).size.height;
    return Scaffold(
      // drawer: const DrawerMenu(),
      // appBar: AppBar(
      //   title: Text(S.of(context).intro_screen_app_bar_title),
      //   centerTitle: true,
      // ),
      body: Stack(
        children: [
          const Center(
            child: Text("Доступна менюха"),
          ),
          Positioned(
            top: v_size / 20,
            left: 30.0,
            right: -30,
            child: ExpandableMenu(
              backgroundColor: Colors.black12,
              iconColor: Colors.black,
              itemContainerColor: Colors.transparent,
              width: 60.0,
              height: 60.0,
              items: [
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
