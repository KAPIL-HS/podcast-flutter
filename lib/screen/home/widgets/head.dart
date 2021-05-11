import 'package:flutter/material.dart';
import 'package:podcast_app/themes/color.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Head extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Head> {
  File image;
  showPicker(context) {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap:(){
                    imageFromCamera();
                    Navigator.pop(context);
                  },
                  child:Text("Camera"),
                ),
                Container(
                  height: 35,
                  child: VerticalDivider(
                    thickness: 2,
                  ),
                ),
                GestureDetector(
                  onTap:(){
                    imageFromGallery();
                    Navigator.pop(context);
                  },
                  child:Text("Gallery"),
                ),
              ],
            ),
          );
        });
  }

  imageFromGallery() async {
    PickedFile _image =
        await ImagePicker().getImage(source: ImageSource.gallery);
    setState((){
      image = File(_image.path);
    });
  }

  imageFromCamera() async{
    PickedFile _image = await ImagePicker().getImage(source:ImageSource.camera);
    setState((){
      image = File(_image.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good morning,",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: width * 0.055,
                fontWeight:FontWeight.w600,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              "kapil",
              style: TextStyle(
                fontSize: width * 0.08,
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
            child: image == null ? Icon(
              Icons.person,
              size: width * 0.08,
              color: Colors.grey[600],
            ) : CircleAvatar(
              radius:width*0.06,
              backgroundImage:FileImage(image),
            ),
          ),
        ),
      ],
    );
  }
}