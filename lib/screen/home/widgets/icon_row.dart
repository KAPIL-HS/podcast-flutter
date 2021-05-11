import 'package:flutter/material.dart';
import 'package:podcast_app/model/icon_row_data_model.dart';

class IRow extends StatefulWidget {
  @override
  _IconRowState createState() => _IconRowState();
}

class _IconRowState extends State<IRow> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView.builder(
        itemCount: iRow.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap:() {
            setState((){selectedIndex = index;});
          },
          child:Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 14,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 55,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: index == selectedIndex ? Colors.black : Colors.white,
                ),
                child: Icon(
                  iRow[index].icon,
                  color: Colors.grey[400],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                iRow[index].iconName,
                style: TextStyle(
                  color: index == selectedIndex ? Colors.black : Colors.grey[400],
                  fontSize: 11,
                  fontWeight:FontWeight.w800,
                ),
              ),
            ],
          ),
        ),),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}