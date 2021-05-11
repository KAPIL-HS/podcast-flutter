import 'package:flutter/material.dart';

class PodcastImage extends StatelessWidget {
  final String image;

  const PodcastImage({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Image.asset(
          image,
          fit:BoxFit.fill,
        ),
      ),
    );
  }
}