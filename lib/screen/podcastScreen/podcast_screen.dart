import 'package:flutter/material.dart';
import 'package:podcast_app/model/podcast_model.dart';
import 'package:podcast_app/screen/podcastScreen/widgets/icon_row.dart';
import 'package:podcast_app/screen/podcastScreen/widgets/podcast_image.dart';
import 'package:podcast_app/screen/podcastScreen/widgets/slider.dart';

class PodcastScreen extends StatefulWidget {
  final Podcast podcast;

  const PodcastScreen({Key key, this.podcast}) : super(key: key);
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
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black54,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions:[
          IconButton(
            icon:Icon(Icons.more_vert_outlined),
            iconSize:30,
            color:Colors.grey[700],
            onPressed:() {
              //code
            },
          ),
        ],
      ),
      body:ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 25,
              right: 25,
            ),
            child: Column(
              children: [
                PodcastImage(image:widget.podcast.imageUrl,),
                SizedBox(
                  height: height * 0.05,
                ),
                Text(
                  widget.podcast.title,
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
                IconRow(),
                SizedBox(
                  height: height * 0.025,
                ),
                SlidePlayer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}