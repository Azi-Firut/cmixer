import 'package:flutter/material.dart';
import 'package:pie_menu/pie_menu.dart';
import '../../../generated/l10n.dart';
import '../widgets/main_post_widget.dart';
import 'add_post_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    // TODO: implement load firebase data
    super.initState();
  }

  // void _incrementCounter() {
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    //var vSize = MediaQuery.of(context).size.height;

    return PieCanvas(
      child: Scaffold(
        // drawer: const DrawerMenu(),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: AppBar(
            title: Text(S.of(context).intro_screen_app_bar_title),
            centerTitle: true,
            backgroundColor: Colors.white,
            actions: [
              Row(
                children: [
                  const SizedBox(
                    width: 40,
                    child: MaterialButton(
                      elevation: 0,
                      padding: EdgeInsets.only(right: 12.0),
                      color: Colors.white,
                      textColor: Colors.black,
                      onPressed: null,
                      splashColor: Colors.white,
                      child: Icon(
                        Icons.account_circle_outlined,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    child: MaterialButton(
                      elevation: 0,
                      padding: const EdgeInsets.only(right: 8.0),
                      color: Colors.white,
                      textColor: Colors.black,
                      splashColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddPostScreen()),
                        );
                      },
                      child: const Icon(
                        Icons.add_a_photo_outlined,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Positioned(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return const MainPostWidget();
                },
              ),
            ),
            // Positioned(
            //   top: vSize / 20,
            //   left: 30.0,
            //   right: -30,
            //   child: const ExpandableMenu(
            //     backgroundColor: Colors.black12,
            //     iconColor: Colors.black,
            //     itemContainerColor: Colors.transparent,
            //     width: 60.0,
            //     height: 60.0,
            //     items: [
            //       icoEmpty,
            //       icoAccount,
            //       icoAddPost,
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
