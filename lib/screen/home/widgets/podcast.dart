import 'package:flutter/material.dart';
import 'package:podcast_app/model/podcast_data_model.dart';
import 'package:podcast_app/screen/podcastScreen/podcast_screen.dart';

class Podcast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding:EdgeInsets.only(left:15,),
      child:Container(
      height: height * 0.35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: pList.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.only(
            right: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PodcastScreen(podcast:pList[index],)));
                },
                child: Container(
                  height: 170,
                  width: 230,
                  decoration:BoxDecoration(
                  ),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset(
                      pList[index].imageUrl,
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation:10,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                pList[index].title,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize:15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(pList[index].subTitle,
                  style: TextStyle(
                    color: Colors.grey[500],
                  )),
            ],
          ),
        ),
      ),
    ),);
  }
}