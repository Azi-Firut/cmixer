import 'package:flutter/material.dart';
import 'package:pie_menu/pie_menu.dart';
import '../../../generated/l10n.dart';
import '../widgets/main_post_widget.dart';
import 'main_posts_screen.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({
    super.key,
  });

  @override
  State<AddPostScreen> createState() => _AddPostScreen();
}

class _AddPostScreen extends State<AddPostScreen> {
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
    return PieCanvas(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: AppBar(
            title: Text(
              S.of(context).add_post_screen_app_bar_title.toUpperCase(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            actions: [
              Row(
                children: [
                  SizedBox(
                    width: 40,
                    child: MaterialButton(
                      elevation: 0,
                      padding: const EdgeInsets.only(right: 8.0),
                      color: Colors.white,
                      textColor: Colors.black,
                      splashColor: Colors.white,
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainPage(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_rounded,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: MainPostWidget(),
      ),
    );
  }
}
