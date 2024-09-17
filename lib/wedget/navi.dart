import 'dart:js';

import 'package:courses/theems/appcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Widget Navi(BuildContext context,int index){

  return Container(
    height: MediaQuery.sizeOf(context ).height,
    width: MediaQuery.sizeOf(context ).width*0.1,
    color: AppColors.backgroundColor,
    padding: EdgeInsets.fromLTRB(5, 0, 7, 0),
    child:
    Column(children: [
      SizedBox(  height: MediaQuery.sizeOf(context ).height*0.1,),
      GestureDetector(
        onTap:(){ GoRouter.of(context).go('/');},
      child:  CircleAvatar(
          radius: 40,
          backgroundColor: AppColors.primaryColor,
          child:   CircleAvatar(
            radius: 37,
            backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.Xu4K4Q8NxBSicuArFbF06QHaHa?rs=1&pid=ImgDetMain"),
          )),),
      SizedBox(  height: MediaQuery.sizeOf(context).height*0.02,),
     GestureDetector(
       onTap:(){ GoRouter.of(context).go('/HomeScreen');},

      child:
      Container(
        height: 50, width:MediaQuery.sizeOf(context).width*0.5,
        decoration: BoxDecoration(
          color: index==1? AppColors.navbutton :AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child:Row(
            children: [
              SizedBox(width:8,),
              Icon(
          Icons.home,
          color:index==1? AppColors.navitem :AppColors.backgroundColor,
        ),
      SizedBox(width:8,),
          Text("home",style: TextStyle(
            color: index==1? AppColors.navitem :AppColors.backgroundColor,
          )),

    ]),),),
      SizedBox(  height: MediaQuery.sizeOf(context).height*0.02,),
      GestureDetector(
        onTap:(){ GoRouter.of(context).go('/SplashScreen');},

        child:
        Container(
          height: 50, width:MediaQuery.sizeOf(context).width*0.5,
          decoration: BoxDecoration(
            color: index==2? AppColors.navbutton :AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child:Row(
              children: [
                SizedBox(width:8,),Icon(
                  Icons.home,
                  color:index==2? AppColors.navitem :AppColors.backgroundColor,
                ),
                SizedBox(width:8,),
                Text("home",style: TextStyle(
                  color: index==2? AppColors.navitem :AppColors.backgroundColor,
                )),

              ]),),),
      SizedBox(  height: MediaQuery.sizeOf(context).height*0.02,),
      GestureDetector(
        onTap:(){ GoRouter.of(context).go('/Courses');},

        child:
        Container(
          height: 50, width:MediaQuery.sizeOf(context).width*0.5,
          decoration: BoxDecoration(
            color: index==3? AppColors.navbutton :AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child:Row(
              children: [
                SizedBox(width:8,),Icon(
                  Icons.library_books_rounded,
                  color:index==3? AppColors.navitem :AppColors.backgroundColor,
                ),
                SizedBox(width:8,),
                Text("Courses",style: TextStyle(
                  color: index==3? AppColors.navitem :AppColors.backgroundColor,
                )),

              ]),),),
      SizedBox(  height: MediaQuery.sizeOf(context).height*0.02,),
      GestureDetector(
        onTap:(){ GoRouter.of(context).go('/Profile');},

        child:
        Container(
          height: 50, width:MediaQuery.sizeOf(context).width*0.5,
          decoration: BoxDecoration(
            color: index==5? AppColors.navbutton :AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child:Row(
              children: [
                SizedBox(width:8,),Icon(
                  Icons.person_rounded,
                  color:index==5? AppColors.navitem :AppColors.backgroundColor,
                ),
                SizedBox(width:8,),
                Text("Profile",style: TextStyle(
                  color: index==5? AppColors.navitem :AppColors.backgroundColor,
                )),

              ]),),),

    ],),

  );
}