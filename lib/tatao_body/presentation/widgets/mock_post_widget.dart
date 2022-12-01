import 'package:cmixer/tatao_body/presentation/widgets/divider_gradient.dart';
import 'package:flutter/material.dart';

class IntroPost extends StatefulWidget {
  const IntroPost({
    super.key,
  });

  @override
  State<IntroPost> createState() => _IntroPostState();
}

class _IntroPostState extends State<IntroPost> {
  @override
  void initState() {
    // TODO: implement load firebase data
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var hSize = MediaQuery.of(context).size.height;
    var vSize = MediaQuery.of(context).size.width;
    return Column(children: [
      Image.asset(
        'assets/images/noimg.jpg',
        width: vSize,
        height: vSize * 0.7,
        fit: BoxFit.cover,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage('assets/images/avatar.jpg'))),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text("Nick"),
              Text("City,Country"),
            ],
          )
        ],
      ),
      Container(
        color: Colors.cyan,
        width: double.infinity,
        height: 10,
      ),
      SizedBox(
        width: double.infinity,
        height: 28,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              children: const [
                Icon(
                  Icons.thumb_up_outlined,
                  size: 18,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.0, left: 8),
                  child: Text("132"),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              children: const [
                Icon(
                  Icons.mode_comment_outlined,
                  size: 18,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.0, left: 8),
                  child: Text("132"),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Row(
              children: const [
                Icon(
                  Icons.thumb_down_outlined,
                  size: 18,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.0, left: 8),
                  child: Text("132"),
                ),
              ],
            ),
          ),
        ]),
      ),
      const DividerGradientHorizontal(),
    ]);
  }
}
