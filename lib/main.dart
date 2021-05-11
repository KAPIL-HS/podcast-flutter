import 'package:flutter/material.dart';
import 'screen/home/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Podcast app",
      home: Home(),
    ),
  );
}