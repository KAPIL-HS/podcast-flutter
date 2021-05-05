import 'package:flutter/material.dart';
import 'package:podcast_app/custom/home_custom.dart';
import 'podcast_screen.dart';
import 'themes/color.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final list = [
                    Carrd(
                      icon: Icons.folder_special_sharp,
                      text: "Premium",
                    ),
                    Carrd(
                      text: "Popular",
                      icon: Icons.fireplace_outlined,
                    ),
                    Carrd(
                      text: "Trending",
                      icon: Icons.trending_up,
                    ),
                    Carrd(
                      text: "Recent",
                      icon: Icons.timer,
                    ),
                ];
  showPicker(context) {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Camera"),
                Container(
                  height: 35,
                  child: VerticalDivider(
                    thickness: 2,
                  ),
                ),
                Text("Gallery"),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 20,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning,",
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: width * 0.055,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          "kapil",
                          style: TextStyle(
                            fontSize: width * 0.07,
                            fontWeight: FontWeight.w700,
                            color: PColor.primaryColor,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        showPicker(context);
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[400],
                        radius: width * 0.06,
                        child: Icon(
                          Icons.person,
                          size: width * 0.08,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "vat",
                    labelStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      size: width * 0.075,
                      color: PColor.primaryColor,
                    ),
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: list,
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended",
                      style: TextStyle(
                        fontSize: width * 0.06,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                        color: PColor.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Container(
                  height: height * 0.35,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => PodcastScreen()));
                        },
                        child: Podcast(
                          text1: "Get Inspired in Design",
                          text2: "Lmma Police",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => PodcastScreen()));
                        },
                        child: Podcast(
                          text1: "Secret Behire",
                          text2: "Dono mose",
                        ),
                      ),
                      Podcast(
                        text1: "Get Inspired in Design",
                        text2: "Lmma Police",
                      ),
                      Podcast(
                        text1: "secret Behire",
                        text2: "Dono mose",
                      ),
                      Podcast(
                        text1: "Get Inspired in Design",
                        text2: "Lmma Police",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}