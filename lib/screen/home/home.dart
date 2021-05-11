import 'package:flutter/material.dart';
import 'package:podcast_app/screen/home/widgets/icon_row.dart';
import 'package:podcast_app/screen/home/widgets/head.dart';
import 'package:podcast_app/screen/home/widgets/searchbar.dart';
import '../../themes/color.dart';
import 'package:podcast_app/screen/home/widgets/podcast.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
            ),
            child: Column(
              children: [
                Head(),
                SizedBox(
                  height: height * 0.05,
                ),
                Searchbar(),
                SizedBox(
                  height: height * 0.05,
                ),
                IRow(),
                SizedBox(
                  height: height * 0.015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended",
                      style: TextStyle(
                        fontSize: width * 0.06,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                        color: PColor.primaryColor,
                        fontSize: width * 0.035,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),),
            Podcast(),
        ],
      ),
    );
  }
}