import 'package:flutter/cupertino.dart';

import '../theems/appcolor.dart';

Widget courses (BuildContext context,{String? image ,String? title ,String? subtitle ,String? code }){
  return Container(
    height: MediaQuery.sizeOf(context).height*0.2,
    width: MediaQuery.sizeOf(context).width*0.5,
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(children: [
    Container(
    height: MediaQuery.sizeOf(context).height*0.2,
    width: MediaQuery.sizeOf(context).width*0.2,
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
      image: NetworkImage(image!),fit: BoxFit.cover,
       )
    ),),
      SizedBox(height:  MediaQuery.sizeOf(context).height*.02,),
      Column(children: [
        SizedBox(height:  MediaQuery.sizeOf(context).height*.02,),
        Text("       Course name : $title",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
        SizedBox(height:  MediaQuery.sizeOf(context).height*.02,),
        Text("  Course code : $code",style: TextStyle(color: AppColors.TextColor , fontSize: 10),),
        SizedBox(height:  MediaQuery.sizeOf(context).height*.02,),
        Text("  presented By : $subtitle",style: TextStyle(color: AppColors.TextColor , fontSize: 10),),
      ],)

    ],),
  );
}

