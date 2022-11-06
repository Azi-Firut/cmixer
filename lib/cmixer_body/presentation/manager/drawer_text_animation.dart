import 'package:flutter/material.dart';

class MenuTextAnimation extends StatefulWidget {
  const MenuTextAnimation(
      {required this.text, required this.duration, Key? key})
      : super(key: key);

  final String text;
  final int duration;

  @override
  State<MenuTextAnimation> createState() => Amimation();
}

class Amimation extends State<MenuTextAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation color;
  late Animation scale;

  @override
  void initState() {
    super.initState();

    // Defining controller with animation duration of two seconds
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: widget.duration));

    // Defining both color and size animations
    color = ColorTween(begin: Colors.indigo, end: Colors.white)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeInExpo));
    scale = Tween<double>(begin: 0.0, end: 1.8)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));

    // Rebuilding the screen when animation goes ahead
    controller.addListener(() {
      setState(() {});
    });

    // Repeat the animation after finish
    controller.forward();

    //For single time
    //controller.forward()

    //Reverses the animation instead of starting it again and repeats
    //controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Text(
        widget.text,
        textScaleFactor: scale.value,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: color.value,
        ),
      ),
    );
  }
}
