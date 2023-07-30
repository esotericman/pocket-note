import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: const Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/chun-li.jpg"),
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
