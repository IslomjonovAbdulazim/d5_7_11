import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDark = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SwitchListTile(
                value: isDark,
                onChanged: (value) {
                  if (isDark == true) {
                    isDark = false;
                  } else if (isDark == false) {
                    isDark = true;
                  }
                  setState(() {});
                },
                title: Text("Is Dark Mode On"),
                tileColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(
                    color: Colors.red,
                    width: 1,
                  ),
                ),
                activeTrackColor: Colors.red,
                inactiveTrackColor: Colors.blue,
                activeColor: Colors.cyan,
              ),
            ],
          ),
        ),
      ),
    );
  }
}










