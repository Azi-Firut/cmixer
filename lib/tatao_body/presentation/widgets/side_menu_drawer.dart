import 'package:cmixer/tatao_body/presentation/manager/constant.dart';
import 'package:flutter/material.dart';
import '../manager/drawer_text_animation.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  CustomDrawerMenu createState() => CustomDrawerMenu();
}

class CustomDrawerMenu extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kMainColor,
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 140,
            // color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.asset(
                'assets/images/logo.png',
                height: 100,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(context, '/main_screen_rout');
            },
            child: const Padding(
              padding: EdgeInsets.only(bottom: 8, top: 8, left: 12, right: 12),
              child: MenuTextAnimation(
                text: "1",
                duration: 500,
              ),

              ///  text: S.of(context).drawer_menu_main, duration: 500,),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(context, '/services_screen_rout');
            },
            child: const Padding(
              padding: EdgeInsets.only(bottom: 8, top: 8, left: 12, right: 12),
              child: MenuTextAnimation(
                text: "2",
                duration: 600,
              ),

              ///  text: S.of(context).drawer_menu_services, duration: 600,),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(context, '/pricing_screen_rout');
            },
            child: const Padding(
              padding: EdgeInsets.only(bottom: 8, top: 8, left: 12, right: 12),
              child: MenuTextAnimation(
                text: "3",
                duration: 700,
              ),

              ///text: S.of(context).drawer_menu_pricing, duration: 700,),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(context, '/contact_screen_rout');
            },
            child: const Padding(
              padding: EdgeInsets.only(bottom: 8, top: 8, left: 12, right: 12),
              child: MenuTextAnimation(
                text: "4",
                duration: 800,
              ),

              /// text: S.of(context).drawer_menu_contact_us, duration: 800),
            ),
          ),

          // GestureDetector(
          //   onTap: () {
          //     Navigator.popAndPushNamed(context, '/nonsens_screen_rout');
          //   },
          //   child: const Padding(
          //     padding: EdgeInsets.only(bottom: 8, top: 8, left: 12, right: 12),
          //     child: Text(
          //       'Test screen',
          //       textAlign: TextAlign.center,
          //       textScaleFactor: 1.8,
          //       style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.popAndPushNamed(context, '/expand_rout');
          //   },
          //   child: const Padding(
          //     padding: EdgeInsets.only(bottom: 8, top: 8, left: 12, right: 12),
          //     child: Text(
          //       'Expand test',
          //       textAlign: TextAlign.center,
          //       textScaleFactor: 1.8,
          //       style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.popAndPushNamed(context, '/itin_send_form_rout');
          //   },
          //   child: const Padding(
          //     padding: EdgeInsets.only(bottom: 8, top: 8, left: 12, right: 12),
          //     child: Text(
          //       'itin send form',
          //       textAlign: TextAlign.center,
          //       textScaleFactor: 1.8,
          //       style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
