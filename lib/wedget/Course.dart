import 'package:courses/theems/appcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget CourseWidgit(BuildContext context){
  return Container(
    width: MediaQuery.sizeOf(context).width*0.25,
    height:  MediaQuery.sizeOf(context).height*.30,
    decoration: BoxDecoration(
      color: AppColors.backgroundColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child:  Column(children: [
     Container(
       width: MediaQuery.sizeOf(context).width*0.25,
       height:  MediaQuery.sizeOf(context).height*.10,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10),
         image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/1181240/pexels-photo-1181240.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
         fit:BoxFit.cover,
         )
       ),
     ),
      SizedBox(height: 10,),
      Text("name",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
      SizedBox(height: 10,),
      Text("descrption \n pla pla pla",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
    ],),
  );
}