import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/chun-li.jpg"),
              radius: 40.0,
            ),
            Divider(
              height: 90.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
