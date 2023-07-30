import 'package:flutter/material.dart';

class NoteInfo extends StatefulWidget {
  const NoteInfo({super.key});

  @override
  State<NoteInfo> createState() => _NoteInfoState();
}

class _NoteInfoState extends State<NoteInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: (Colors.grey[850])!,
        title: const Text(
          "笔记详情",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              wordSpacing: 8),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Text("hello"),
    );
  }
}
