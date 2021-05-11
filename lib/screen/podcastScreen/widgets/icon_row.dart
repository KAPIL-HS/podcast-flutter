import 'package:flutter/material.dart';
import 'package:podcast_app/themes/color.dart';

class IconRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
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
    );
  }
}
