import 'package:flutter/material.dart';
import 'package:pocket_note/pages/home.dart';
import 'package:pocket_note/views/setting.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => const Home(),
      "/setting": (context) => const Setting(),
    },
  ));
}
