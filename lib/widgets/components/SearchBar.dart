// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../constants/ColorConstants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(gradient: LinearGradient(
      //         begin: Alignment.topRight,
      //         end: Alignment.bottomLeft,
      //         colors: [
      //           Color.fromARGB(255, 250, 251, 252),
      //           Color.fromARGB(255, 248, 233, 250),
      //           Color.fromARGB(255, 215, 255, 254),
      //         ],
      //       )),
      alignment: Alignment.center,
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      height: 40,
      decoration: BoxDecoration(
        gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 250, 251, 252),
                Color.fromARGB(255, 250, 242, 251),
              ],
            ),
        boxShadow: [
        BoxShadow(
            blurRadius: 20,
            offset: const Offset(0, 10),
            color: kPrimaryColor.withOpacity(0.23)),
      ], borderRadius: BorderRadius.circular(30), ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 10),
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            const Icon(
              Icons.search,
              color: kPrimaryColor,
            )
          ],
        ),
      ),
    );
  }
}
