import 'dart:async';

import 'package:cmixer/tatao_body/presentation/manager/constant.dart';
import 'package:cmixer/tatao_body/presentation/pages/main_posts_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../generated/l10n.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  double _fontSize = 2;
  double _containerSize = 2.5;
  double _textOpacity = 0.0;
  double _containerOpacity = 0.0;

  late AnimationController _controller;
  late Animation<double> animation1;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    animation1 = Tween<double>(begin: 40, end: 20).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOutCirc))
      ..addListener(() {
        setState(() {
          _textOpacity = 1.0;
        });
      });

    _controller.forward();

    Timer(const Duration(seconds: 2), () {
      setState(() {
        _fontSize = 0.6;
      });
    });

    Timer(const Duration(seconds: 2), () {
      setState(() {
        _containerSize = 4;
        _containerOpacity = 1;
      });
    });

    Timer(const Duration(seconds: 4), () {
      setState(() {
        Navigator.pushReplacement(context, PageTransition(const MainPage()));
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(systemNavigationBarColor: kMainColor));
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kMainColor,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  duration: const Duration(seconds: 2),
                  curve: Curves.easeInCubic,
                  opacity: _containerOpacity,
                  child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOutCirc,
                      height: _width / _containerSize,
                      width: _width / _containerSize,
                      alignment: Alignment.center,
                      child: Image.asset('assets/images/logo.png')),
                ),
                AnimatedOpacity(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInCubic,
                  opacity: _containerOpacity,
                  child: AnimatedContainer(
                      duration: const Duration(seconds: 3),
                      curve: Curves.easeInOutCirc,
                      height: _width / _containerSize,
                      width: _width / _containerSize,
                      alignment: Alignment.topCenter,
                      child: Text(
                        S.of(context).splash_screen_text.toUpperCase(),
                        textAlign: TextAlign.center,
                        textScaleFactor: 0.8,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PageTransition extends PageRouteBuilder {
  final Widget page;

  PageTransition(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: const Duration(milliseconds: 1000),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
              curve: Curves.easeInExpo,
              parent: animation,
            );
            return Align(
              alignment: Alignment.bottomCenter,
              child: SizeTransition(
                sizeFactor: animation,
                axisAlignment: 0,
                child: page,
              ),
            );
          },
        );
}
