import 'package:courses/theems/appcolor.dart';
import 'package:courses/wedget/courses.dart';
import 'package:courses/wedget/drawer.dart';
import 'package:courses/wedget/info.dart';
import 'package:courses/wedget/navi.dart';
import 'package:courses/wedget/Course.dart';
import 'package:flutter/material.dart';

import '../model/corcesmodel.dart';

void main() {
  runApp(Profile());
}

class Profile extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth > 700){
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home:Scaffold(
            backgroundColor: AppColors.secondaryColor,
            body:SingleChildScrollView(
              child: Row(children: [
                Navi(context, 5),
                Expanded(child: Column(children: [
                  SizedBox(height:  MediaQuery.sizeOf(context).height*.05,),
                  Container(
                    margin: EdgeInsets.only(right: 100,left: 100),
                    height:  MediaQuery.sizeOf(context).height*.3,
                    width:  MediaQuery.sizeOf(context).width,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:Column(children: [
                      SizedBox(width: MediaQuery.sizeOf(context).width*.03,),
                      Text("                Your Information ",style: TextStyle(color: AppColors.TextColor , fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                      Text("Name :      ",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                      SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                      Text("ID   :     ",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                      SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                      Text("Level :     ",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                    ],) ,),
                  SizedBox(height:  MediaQuery.sizeOf(context).height*.05,),
                  Container(
                    margin: EdgeInsets.only(right: 100,left: 100),
                    height:  MediaQuery.sizeOf(context).height*.3,
                    width:  MediaQuery.sizeOf(context).width,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:Column(children: [
                      SizedBox(width: MediaQuery.sizeOf(context).width*.03,),
                      Text("            Your Contact Information  ",style: TextStyle(color: AppColors.TextColor , fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                      Text("Phone :      ",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                      SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                      Text("Email :     ",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                      SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                      Text("Address :     ",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                    ],) ,),
                  SizedBox(height:  MediaQuery.sizeOf(context).height*.07,
                  width: MediaQuery.sizeOf(context).width*0.5,),
                  ElevatedButton(
                    child: const Text('Edit',style: TextStyle(
                        color: Colors.black,fontSize: 20),),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.sizeOf(context).width*0.5,
                          MediaQuery.sizeOf(context).height*0.08 ),
                      backgroundColor: AppColors.primaryColor,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                      ),
                    ),
                  )
                ],) ),
                Info(context),


              ],),
            )
            ));
      }
    else{
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home:Scaffold(
              drawer: drawer(context),
                appBar: AppBar(
                  backgroundColor:  AppColors.backgroundColor,
                  title: Text("Profile"),
                  centerTitle: true,
                ),
                backgroundColor: AppColors.secondaryColor,
                body:SingleChildScrollView(
                  child: Column(children: [
                    SizedBox(height:  MediaQuery.sizeOf(context).height*.05,),
                    Center( child:  CircleAvatar(
                    radius: 60, // Change the radius to the desired size
                   backgroundColor: AppColors.primaryColor,
                    child: CircleAvatar(
                   radius: 57, // Change the radius of the inner CircleAvatar
                   backgroundImage: NetworkImage("https://th.bing.com/th/id/R.c98530977183534ed0e49e6db725bd7d?rik=qRXJBwOokn7dSQ&pid=ImgRaw&r=0"),
                   ),
                 ),),

                    SizedBox(height:  MediaQuery.sizeOf(context).height*.05,),
                    Container(
                     margin: EdgeInsets.only(right: 100,left: 100),
                      height:  MediaQuery.sizeOf(context).height*.3,
                      width:  MediaQuery.sizeOf(context).width,
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:Column(children: [
                        SizedBox(width: MediaQuery.sizeOf(context).width*.03,),
                        Text("                Your Information ",style: TextStyle(color: AppColors.TextColor , fontSize: 17,fontWeight: FontWeight.bold),),
                        SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                        Text("Name :      ",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                        SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                        Text("ID   :     ",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                        SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                        Text("Level :     ",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                      ],) ,),
                    SizedBox(height:  MediaQuery.sizeOf(context).height*.05,),
                    Container(
                      margin: EdgeInsets.only(right: 100,left: 100),
                      height:  MediaQuery.sizeOf(context).height*.3,
                      width:  MediaQuery.sizeOf(context).width,
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:Column(children: [
                        SizedBox(width: MediaQuery.sizeOf(context).width*.03,),
                        Text("            Your Contact Information  ",style: TextStyle(color: AppColors.TextColor , fontSize: 17,fontWeight: FontWeight.bold),),
                        SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                        Text("Phone :      ",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                        SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                        Text("Email :     ",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                        SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                        Text("Address :     ",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                      ],) ,),
                    SizedBox(height:  MediaQuery.sizeOf(context).height*.05,),
                    ElevatedButton(
                      child: const Text('Edit',style: TextStyle(
                          color: Colors.black,fontSize: 20),),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(MediaQuery.sizeOf(context).width*0.5,
                            MediaQuery.sizeOf(context).height*0.08 ),
                        backgroundColor: AppColors.primaryColor,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                        ),
                      ),
                    )
                  ],),
                )

            ));
      }
    });
  }}