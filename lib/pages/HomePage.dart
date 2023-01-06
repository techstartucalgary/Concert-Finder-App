import 'package:flutter/material.dart';
import 'package:flutter_concert_app/constants/ColorConstants.dart';
import 'package:flutter_concert_app/widgets/home page/HomePageAppBar.dart';
import 'package:flutter_concert_app/widgets/home%20page/Header.dart';
import 'package:flutter_concert_app/widgets/BottomBar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/components/SmallButton.dart';
import '../widgets/components/TitleAndButton.dart';
import '../widgets/components/TitleWithUnderline.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];
    final List<Widget> imageSliders = imgList
        .map(
          (item) => Container(
            height: size.height * 0.4,
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    topRight: Radius.circular(5.0),
                  ),
                  child: Image.network(
                    item,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  height: 30,
                  decoration: BoxDecoration(color: Colors.white54, shape: BoxShape.rectangle),
                  child: Row(children: [
                    Text('Description', style: TextStyle(fontWeight: FontWeight.w300),)
                  ],)
                )
              ],
            ),
          ),
        )
        .toList();

    return Scaffold(
      backgroundColor: kBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: 30),
            TitleWithButton(
              title: 'Recommended',
              text: 'More',
              press: () {},
            ),

            Container(
              margin: EdgeInsets.only(top: 10),
              width: size.width,
              // height: 200,
              child: CarouselSlider(
                  options: CarouselOptions(
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.5,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      initialPage: 2,
                      autoPlay: true),
                  items: imageSliders),
            ),
            // SafeArea(
            //     child: Center(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: <Widget>[
            // Padding(
            //     padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
            //     child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: const [
            //           Text('Hi Name!',
            //               style: TextStyle(
            //                 fontSize: 15,
            //                 color: Color.fromRGBO(84, 159, 204, 1),
            //                 fontWeight: FontWeight.bold,
            //               )),
            //           Text(
            //             'Location Widget',
            //           ),
            //         ])),
            // Container(
            //     alignment: Alignment.centerLeft,
            //     child: const Padding(
            //         padding: EdgeInsets.all(10.0),
            //         child: Text('Trending',
            //             style: TextStyle(
            //               fontSize: 25,
            //               color: Color.fromRGBO(84, 159, 204, 1),
            //               fontWeight: FontWeight.w200,
            //             )))),
            // Container(
            //   // height: 300,
            //   child: CarouselSlider(
            //       options: CarouselOptions(
            //           height: 20 / 2,
            //           aspectRatio: 16 / 9,
            //           enlargeCenterPage: true,
            //           enableInfiniteScroll: false,
            //           initialPage: 2,
            //           autoPlay: true),
            //       items: imageSliders),
            // ),
            //     ],
            //   ),
            // )),
          ],
        ),
      ),

      // body:
      // SafeArea(
      //     child: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: <Widget>[
      //       Padding(
      //           padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
      //           child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: const [
      //                 Text('Hi Name!',
      //                     style: TextStyle(
      //                       fontSize: 15,
      //                       color: Color.fromRGBO(84, 159, 204, 1),
      //                       fontWeight: FontWeight.bold,
      //                     )),
      //                 Text(
      //                   'Location Widget',
      //                 ),
      //               ])),
      //       Container(
      //           alignment: Alignment.centerLeft,
      //           child: const Padding(
      //               padding: EdgeInsets.all(10.0),
      //               child: Text('Trending',
      //                   style: TextStyle(
      //                     fontSize: 25,
      //                     color: Color.fromRGBO(84, 159, 204, 1),
      //                     fontWeight: FontWeight.w200,
      //                   )))),
      //       Container(
      //         // height: 300,
      //         child: CarouselSlider(
      //             options: CarouselOptions(
      //                 height: height / 2,
      //                 // aspectRatio: 16 / 9,
      //                 enlargeCenterPage: true,
      //                 enableInfiniteScroll: false,
      //                 initialPage: 2,
      //                 autoPlay: true),
      //             items: imageSliders),
      //       ),
      //     ],
      //   ),
      // )),
    );
  }
}
