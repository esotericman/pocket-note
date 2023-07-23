import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:pocket_note/views/setting.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SliderDrawer(
          appBar: const SliderAppBar(
              appBarHeight: 50,
              appBarColor: Colors.white,
              appBarPadding: EdgeInsets.zero,
              title: Text("Pocket Note",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      wordSpacing: 8))),
          slider: const Setting(),
          child: Container(color: Colors.white),
        ),
      ),
    );
  }
}
