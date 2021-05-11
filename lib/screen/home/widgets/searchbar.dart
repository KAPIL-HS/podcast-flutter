import 'package:flutter/material.dart';
import 'package:podcast_app/themes/color.dart';

class Searchbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: "Search for podcats...",
        labelStyle: TextStyle(
          color: Colors.grey[400],
          fontSize:15,
        ),
        suffixIcon: Icon(
          Icons.search_sharp,
          size: MediaQuery.of(context).size.width * 0.05,
          color: PColor.primaryColor,
        ),
        fillColor: Colors.grey[100],
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}