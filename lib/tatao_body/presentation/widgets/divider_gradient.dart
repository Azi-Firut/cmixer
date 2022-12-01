import 'package:flutter/material.dart';

class DividerGradientHorizontal extends StatelessWidget {
  final double heightContainerBlack;
  final double heightContainerWhite;

  const DividerGradientHorizontal(
      {this.heightContainerBlack = 1, this.heightContainerWhite = 1, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                stops: [0.0, 0.1, 0.3, 0.7, 0.9, 1],
                colors: [
                  Colors.transparent,
                  Colors.black12,
                  Colors.black54,
                  Colors.black54,
                  Colors.black12,
                  Colors.transparent,
                ],
              ),
            ),
            height: heightContainerBlack,
            //width: 100,
          ),
          // Container(
          //   decoration: const BoxDecoration(
          //     gradient: LinearGradient(
          //       begin: Alignment.centerLeft,
          //       end: Alignment.centerRight,
          //       stops: [0.0, 0.1, 0.3, 0.7, 0.9, 1],
          //       colors: [
          //         Colors.transparent,
          //         Colors.white10,
          //         Colors.white38,
          //         Colors.white38,
          //         Colors.white10,
          //         Colors.transparent,
          //       ],
          //     ),
          //   ),
          //   height: heightContainerWhite,
          //   // width: 100,
          // ),
        ],
      ),
    );
  }
}
