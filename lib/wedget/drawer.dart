import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../theems/appcolor.dart';

Widget drawer(BuildContext context){
  return Drawer(
    child: ListView(
      children: <Widget>[
        DrawerHeader(
          child: GestureDetector(
            onTap: (){
              GoRouter.of(context).go('/HomeScreen');
            },
            child:
            CircleAvatar(
              radius: 200, // Change the radius to the desired size
              backgroundColor: AppColors.primaryColor,
              child: CircleAvatar(
                radius: 90, // Change the radius of the inner CircleAvatar
                backgroundImage: NetworkImage("https://th.bing.com/th/id/R.c98530977183534ed0e49e6db725bd7d?rik=qRXJBwOokn7dSQ&pid=ImgRaw&r=0"),
              ),
            ),),),

        ListTile(
          leading: Icon(Icons.home), title: Text("Home"),
          onTap: () {
            GoRouter.of(context).go('/HomeScreen');
          },
        ),
        ListTile(
          leading: Icon(Icons.shopping_bag_rounded), title: Text("Courses"),
          onTap: () {
            GoRouter.of(context).go('/Courses');
          },
        ),
        ListTile(
          leading: Icon(Icons.person_rounded), title: Text("Profile"),
          onTap: () {
            GoRouter.of(context).go('/Profile');
          },
        ),
      ],
    ),
  );
}