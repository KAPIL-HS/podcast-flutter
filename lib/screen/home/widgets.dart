import 'package:flutter/material.dart';
import 'package:podcast_app/themes/color.dart';
import 'package:podcast_app/themes/image.dart';
import '../podcastScreen/podcast_screen.dart';
import 'package:podcast_app/model/podcast_data_model.dart';

Widget IconRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
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
        icon: Icons.access_time_outlined,
      ),
    ],
  );
}

Widget SearchBar(context) {
  final width = MediaQuery.of(context).size.width;
  return TextField(
    decoration: InputDecoration(
      labelText: "Search for podcats",
      labelStyle: TextStyle(
        color: Colors.grey[400],
      ),
      suffixIcon: Icon(
        Icons.search_sharp,
        size: width * 0.05,
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
  );
}

Widget Podcast(context) {
  final height = MediaQuery.of(context).size.height;
  return Container(
    height: height * 0.35,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: pList.length,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding:EdgeInsets.only(right:10,),
        child:Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PodcastScreen()));
            },
            child: Container(
              height:170,
              width: 210,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  pList[index].imageUrl,
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height:13,
          ),
          Text(pList[index].title,style:TextStyle(color:Colors.grey[800],fontWeight:FontWeight.w600,),),
          SizedBox(
            height:5.0,
          ),          
          Text(pList[index].subTitle,style:TextStyle(color:Colors.grey[500],)),
        ],
      ),
    ),),
    // child: ListView(
    //   scrollDirection: Axis.horizontal,
    //   children: [
    //     GestureDetector(
    //       onTap: () {
    //         Navigator.of(context)
    //             .push(MaterialPageRoute(builder: (context) => PodcastScreen()));
    //       },
    //       child: Podcastt(
    //         text1: "Get Inspired in Design",
    //         text2: "Lmma Police",
    //       ),
    //     ),
    //     GestureDetector(
    //       onTap: () {
    //         Navigator.of(context)
    //             .push(MaterialPageRoute(builder: (context) => PodcastScreen()));
    //       },
    //       child: Podcastt(
    //         text1: "Secret Behire",
    //         text2: "Dono mose",
    //       ),
    //     ),
    //     Podcastt(
    //       text1: "Get Inspired in Design",
    //       text2: "Lmma Police",
    //     ),
    //     Podcastt(
    //       text1: "secret Behire",
    //       text2: "Dono mose",
    //     ),
    //     Podcastt(
    //       text1: "Get Inspired in Design",
    //       text2: "Lmma Police",
    //     ),
    //   ],
    // ),
  );
}

class Podcastt extends StatefulWidget {
  final String text1;
  final String text2;

  const Podcastt({Key key, this.text1, this.text2}) : super(key: key);

  @override
  _PodcastState createState() => _PodcastState();
}

class _PodcastState extends State<Podcastt> {
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
            color: color_container,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(widget.icon, color: Colors.grey[500]),
        ),
        onTap: () {
          setState(() {});
          color_container = color_container == PColor.homeCard
              ? color_container = Colors.black
              : color_container = PColor.homeCard;
          color_text = color_text == Colors.grey[500]
              ? color_text = Colors.black
              : color_text = Colors.grey[500];
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
