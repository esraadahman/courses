import 'package:courses/theems/appcolor.dart';
import 'package:courses/wedget/info.dart';
import 'package:courses/wedget/navi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage(title: ''));
}
class HomePage extends StatefulWidget {
  final String title;

  HomePage({required this.title});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
          backgroundColor: AppColors.primaryColor,
          body:SingleChildScrollView(
            child:
            Row(
              children:[
                Navi(context,0),
                Expanded(child: Container()),
                Info(context),

              ],
            ),),

          floatingActionButton: FloatingActionButton(
            onPressed:() {},
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
