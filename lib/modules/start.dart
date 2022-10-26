// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:task1gdsc/layout/shared/component.dart';
import 'package:task1gdsc/modules/login.dart';

class Start_Screen extends StatelessWidget {
  const Start_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Image.asset('assets/assets.png'),
          ),
          defaultBottom(
              color: Colors.white,
              color2: Colors.blue,
              onpressed: () {
                navigator(context, Login_Screen());
              },
              text: "Get start"),
        ],
      ),
    );
  }
}
