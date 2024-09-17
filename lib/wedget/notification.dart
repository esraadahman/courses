import 'package:flutter/cupertino.dart';

import '../theems/appcolor.dart';

Widget notif_show(BuildContext context,{String? image,String? title,String? subtitle}){
  return Container(
    width: MediaQuery.of(context).size.width * 0.45,
    height: MediaQuery.sizeOf(context).height * 0.13,
    decoration:  BoxDecoration(
      color: AppColors.backgroundColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(children: [
      SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
      Container(
        width: MediaQuery.of(context).size.width * 0.15,
        height: MediaQuery.sizeOf(context).height * 0.2,
        decoration:  BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image(image: NetworkImage(image!),fit: BoxFit.cover,),
      ),
      SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
      Column(children: [
        SizedBox(width: MediaQuery.sizeOf(context).width*.01,),
        Padding(padding: EdgeInsets.only(left: 10,top: 5), child:
        Text(title!,style: TextStyle(color: AppColors.TextColor , fontSize: 10),),),
        SizedBox(height:  MediaQuery.sizeOf(context).height*.01,),
        Padding(padding: EdgeInsets.only(left: 10,top: 10), child:
        Text(subtitle!,style: TextStyle(color: AppColors.TextColor , fontSize: 8),),),
      ],)
    ],),
  );

}