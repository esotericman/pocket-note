import 'package:flutter/material.dart';
import 'package:pocket_note/pages/home.dart';
import 'package:pocket_note/pages/note_info.dart';
import 'package:pocket_note/views/setting.dart';

void main() {
  runApp(MaterialApp(
    // Set EduSABeginner as the default app font.
    theme: ThemeData(fontFamily: "EduSABeginner"),
    initialRoute: "/",
    routes: {
      "/": (context) => const Home(),
      "/setting": (context) => const Setting(),
      "/note-info": (context) => const NoteInfo(),
    },
  ));
}
