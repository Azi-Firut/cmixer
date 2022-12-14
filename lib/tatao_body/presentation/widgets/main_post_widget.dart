import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:pie_menu/pie_menu.dart';

class MainPostWidget extends StatefulWidget {
  const MainPostWidget({
    super.key,
  });

  @override
  State<MainPostWidget> createState() => _MainPostWidgetState();
}

class _MainPostWidgetState extends State<MainPostWidget> {
  @override
  void initState() {
    // TODO: implement load firebase data
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // var hSize = MediaQuery.of(context).size.height;
    var vSize = MediaQuery.of(context).size.width;

    final List<String> img1List = [
      'assets/images/noimg.jpg',
      'assets/images/noimg.jpg',
      'assets/images/noimg.jpg',
    ];
    final List<String> imgList = [
      'https://source.unsplash.com/random/1920x1920/?nature',
      'https://source.unsplash.com/random/1920x1920/?fruits,flowers',
      'https://source.unsplash.com/random/1080x640/?nature',
      'https://source.unsplash.com/random/1920x1920/?nature',
      'https://source.unsplash.com/random/1920x1920/?science',
      'https://source.unsplash.com/random/1920x1920/?computer'
    ];

    double _sigmaX = 10.0; // from 0-10
    double _sigmaY = 10.0; // from 0-10
    double _opacity = 0.1; // from 0-1.0

    return Column(
      children: [
        PieMenu(
          theme: const PieTheme(
            menuBounceDepth: 1,
            overlayColor: Colors.black54,
            pointerColor: Colors.transparent,
            buttonTheme: PieButtonTheme(
                backgroundColor: Colors.black87, iconColor: Colors.white),
            buttonThemeHovered: PieButtonTheme(
                backgroundColor: Colors.white, iconColor: Colors.black),
          ),
          onTap: () {},
          actions: [
            PieAction(
              tooltip: '',
              onSelect: () {},
              child: const Icon(
                Icons.thumb_up_outlined,
              ),
            ),
            PieAction(
              tooltip: "",
              onSelect: () {},
              child: const Icon(
                Icons.mode_comment_outlined,
              ),
            ),
            PieAction(
              tooltip: '',
              onSelect: () {},
              child: const Icon(
                Icons.thumb_down_outlined,
              ),
            ),
          ],
          child: FlutterCarousel(
            options: CarouselOptions(
              height: vSize * 0.7,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              autoPlay: false,
              enableInfiniteScroll: true,
              autoPlayInterval: const Duration(seconds: 7),
              autoPlayAnimationDuration: const Duration(microseconds: 600),
              autoPlayCurve: Curves.fastOutSlowIn,
              slideIndicator: CircularWaveSlideIndicator(
                indicatorRadius: 4,
                itemSpacing: 12,
                indicatorBorderColor: Colors.black,
                indicatorBorderWidth: 0.1,
                indicatorBackgroundColor: Colors.white54,
              ),
            ),
            items: imgList
                .map(
                  (item) => CachedNetworkImage(
                    memCacheHeight: 500,
                    memCacheWidth: 800,
                    imageUrl: item,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: vSize * 0.7,
                    placeholder: (context, url) => CachedNetworkImage(
                      memCacheHeight: 50,
                      memCacheWidth: 80,
                      imageUrl: item,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      height: vSize * 0.7,
                    ),

                    //) CachedNetworkImage(imageUrl:item,memCacheHeight: 50,memCacheWidth: 50,),
                    //     (context, url) => const Center(
                    //   child: CircularProgressIndicator(),
                    // ),
                  ),
                )
                .toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 12.0, right: 8, top: 8, bottom: 8),
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage('assets/images/avatar.jpg'),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Nick",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "City,Country",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            const Spacer(),
            // Padding(
            //   padding: const EdgeInsets.only(right: 12.0),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.end,
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: const [
            //       Text(
            //         "18:30",
            //         style: TextStyle(
            //           fontWeight: FontWeight.w300,
            //         ),
            //       ),
            //       Text(
            //         "20.02.2023",
            //         style: TextStyle(
            //           fontWeight: FontWeight.w300,
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
        const SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(right: 12.0, left: 12, bottom: 8),
            child: ExpandableText(
              'Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet,',
              expandText: 'more',
              collapseText: 'less',
              maxLines: 3,
              linkColor: Colors.redAccent,
            ),
            // Text(
            //   "SQL basics",
            //   overflow: TextOverflow.ellipsis,
            //   maxLines: 3,
            // ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 28,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0, bottom: 8),
                child: Row(
                  children: const [
                    Icon(
                      Icons.thumb_up_outlined,
                      size: 18,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text("132"),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8),
                child: Row(
                  children: const [
                    Icon(
                      Icons.mode_comment_outlined,
                      size: 18,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text("132"),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 12.0, bottom: 8),
                child: Row(
                  children: const [
                    Icon(
                      Icons.thumb_down_outlined,
                      size: 18,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text("132"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // const DividerGradientHorizontal(),
      ],
    );
  }
}
