import 'package:flutter/material.dart';
import 'themes/image.dart';
import 'themes/color.dart';

class PodcastScreen extends StatefulWidget {
  @override
  _PodcastScreenState createState() => _PodcastScreenState();
}

class _PodcastScreenState extends State<PodcastScreen> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 25,
              right: 25,
            ),
            child: Column(
              children: [
                Container(
                  height: height * 0.4,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Image.asset(
                      PodcastImage.podcastImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Text(
                  "Visulas in Product Design",
                  style: TextStyle(
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  "Stay Creative . Episode 312",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.favorite_outline_outlined,
                      color: PColor.podcastScreenIcons,
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    Icon(
                      Icons.mode_comment_outlined,
                      color: PColor.podcastScreenIcons,
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    Icon(
                      Icons.save_alt,
                      color: PColor.podcastScreenIcons,
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    Icon(
                      Icons.share_outlined,
                      color: PColor.podcastScreenIcons,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Slider(
                    value: 50,
                    activeColor: Colors.black,
                    inactiveColor: Colors.grey[300],
                    min: 0,
                    max: 100,
                    onChanged: (double value) {
                      // setState(() {
                      //   seekToSecond(value.toInt());
                      //   value = value;
                      // });
                    }),
                SizedBox(
                  height: height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        //code
                      },
                      child: Icon(
                        Icons.skip_previous_outlined,
                        size: width * 0.13,
                        color: Colors.grey[700],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: width * 0.15,
                        height: height * 0.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: PColor.primaryColor,
                        ),
                        child: Icon(
                          Icons.pause_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.skip_next_outlined,
                        size: width * 0.13,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}