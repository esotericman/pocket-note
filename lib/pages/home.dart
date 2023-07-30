import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:pocket_note/views/setting.dart';
import 'package:pocket_note/widgets/note_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey[900],
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: SliderDrawer(
          appBar: SliderAppBar(
            appBarHeight: 50,
            appBarColor: (Colors.grey[850])!,
            appBarPadding: EdgeInsets.zero,
            title: const Text(
              "口袋笔记",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  wordSpacing: 8),
            ),
            trailing: TextButton(
              onPressed: () {},
              child: const Row(
                children: [
                  Icon(
                    Icons.add_alert_sharp,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
          slider: const Setting(),
          child: Container(
            color: Colors.grey[850],
            child: const NoteList(),
          ),
        ),
      ),
    );
  }
}
