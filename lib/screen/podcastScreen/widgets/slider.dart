import 'package:flutter/material.dart';
import 'package:podcast_app/themes/color.dart';

class SlidePlayer extends StatefulWidget {
  @override
  _SlidePlayerState createState() => _SlidePlayerState();
}

class _SlidePlayerState extends State<SlidePlayer> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize:MainAxisSize.min,
      children: [
        Slider(
          value:35.0,
          max:100,
          min:0.0,
          activeColor:Colors.black,
          inactiveColor:Colors.grey[300],
          onChanged:(value) {
            //code
          },
        ),
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
    );
  }
}