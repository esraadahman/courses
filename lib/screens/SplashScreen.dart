import 'package:courses/theems/appcolor.dart';
import 'package:courses/wedget/info.dart';
import 'package:courses/wedget/navi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:   Scaffold(
          backgroundColor: AppColors.secondaryColor,
          body:
          Row(
            children:[
              Navi(context,2),
              Expanded(
                  child: SingleChildScrollView(
                  )),
              Info(context),

            ],
          ),

          floatingActionButton: FloatingActionButton(
            onPressed:() {},
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ));

  }
}
