import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDark = true;
  bool acceptTerms = false;

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
                inactiveThumbColor: Colors.red,
              ),
              SizedBox(height: 30),
              CupertinoSwitch(
                value: isDark,
                onChanged: (value) {
                  if (isDark == true) {
                    isDark = false;
                  } else if (isDark == false) {
                    isDark = true;
                  }
                  setState(() {});
                },
                activeTrackColor: Colors.red,
                inactiveThumbColor: Colors.red,
                inactiveTrackColor: Colors.cyan,
              ),
              SizedBox(height: 20),
              CheckboxListTile(
                value: acceptTerms,
                onChanged: (value) {
                  if (acceptTerms == true) {
                    acceptTerms = false;
                  } else if (acceptTerms == false) {
                    acceptTerms = true;
                  }
                  setState(() {});
                },
                title: Text("Football"),
                activeColor: Colors.red,
                checkColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
