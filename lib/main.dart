import 'src/home.dart';
import 'src/data.dart';
import 'src/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Home(designerStorage: APIStorage()),
    )
  );
}
