import 'package:expandable_menu/expandable_menu.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../widgets/mock_post_widget.dart';
import '../widgets/side_menu_buttons.dart';

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
    const icoAccount = AccountButton();
    const icoAddPost = CreateNewPostButton();
    const icoEmpty = EmptyButton();

    var vSize = MediaQuery.of(context).size.height;

    return Scaffold(
      // drawer: const DrawerMenu(),
      // appBar: AppBar(
      //   title: Text(S.of(context).intro_screen_app_bar_title),
      //   centerTitle: true,
      // )
      body: Stack(
        children: [
          Positioned(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return const IntroPost();
              },
            ),
          ),
          Positioned(
            top: vSize / 20,
            left: 30.0,
            right: -30,
            child: const ExpandableMenu(
              backgroundColor: Colors.black12,
              iconColor: Colors.black,
              itemContainerColor: Colors.transparent,
              width: 60.0,
              height: 60.0,
              items: [
                icoEmpty,
                icoAccount,
                icoAddPost,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
