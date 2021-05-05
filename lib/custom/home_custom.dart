import 'package:flutter/material.dart';
import 'package:podcast_app/themes/color.dart';
import 'package:podcast_app/themes/image.dart';

class Carrd extends StatefulWidget {
  final String text;
  final IconData icon;

  const Carrd({Key key, this.text, this.icon}) : super(key: key);
  @override
  _CarrdState createState() => _CarrdState();
}

class _CarrdState extends State<Carrd> {
  Color color_container = PColor.homeCard;
  Color color_text = PColor.homeCardText;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(children: [
      InkWell(
        child: Container(
          height: height * 0.08,
          width: width * 0.15,
          decoration: BoxDecoration(
            boxShadow: kElevationToShadow[1],
            color: color_container,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(widget.icon, color: Colors.grey[500]),
        ),
        onTap: () {
          setState(() {
            color_container = color_container == PColor.homeCard
                ? color_container = Colors.black
                : color_container = PColor.homeCard;
            color_text = color_text == Colors.grey[500]
                ? color_text = Colors.black
                : color_text = Colors.grey[500];
          });
        },
      ),
      SizedBox(
        height: height * 0.02,
      ),
      Text(
        widget.text,
        style: TextStyle(
          color: color_text,
          fontSize: width * 0.035,
          fontWeight: FontWeight.w600,
        ),
      )
    ]);
  }
}

class Podcast extends StatefulWidget {
  final String text1;
  final String text2;

  const Podcast({Key key, this.text1, this.text2}) : super(key: key);

  @override
  _PodcastState createState() => _PodcastState();
}

class _PodcastState extends State<Podcast> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              PodcastImage.podcastImage,
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          widget.text1,
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          widget.text2,
          style: TextStyle(
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }
}
