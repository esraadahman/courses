import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theems/appcolor.dart';

// Widget Info(BuildContext context){
// return Container(
//   height: MediaQuery.sizeOf(context ).height,
//   width: MediaQuery.sizeOf(context ).width*0.17,
//   color: AppColors.backgroundColor,
//   child:
//   Column(children: [
//   SizedBox(  height: MediaQuery.sizeOf(context ).height*0.05,),
//   CircleAvatar(
//   radius: 40,
//   backgroundColor: AppColors.primaryColor,
//   child:   CircleAvatar(
//     radius: 37,
//     backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.Xu4K4Q8NxBSicuArFbF06QHaHa?rs=1&pid=ImgDetMain"),
//   )),
//   SizedBox(  height: MediaQuery.sizeOf(context ).height*0.03,),
// Text("esraa dahman",style: TextStyle(
//   color: AppColors.primaryColor, fontSize: 10,
// ),),
//     SizedBox(  height: MediaQuery.sizeOf(context ).height*0.005,),
//     Text("0123456",style: TextStyle(
//       color: AppColors.primaryColor, fontSize: 15,
//     ),),
//     Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
//    child:  Row(
//       children: [
//         SizedBox( width: MediaQuery.sizeOf(context).width*0.02,//height: 0.03,
//         ),
//        Container(
//          height: MediaQuery.sizeOf(context).height * 0.3,
//          child: ListView.builder(itemCount: 4,
//              itemBuilder: (context , index){
//            return ListTile(
//              title: Text("Assaignment ${index+1}",style: TextStyle(color: AppColors.secondaryColor,fontSize: 14),),
//             // subtitle: Text("sssrgfv",style: TextStyle(color: AppColors.secondaryColor,fontSize: 10),),
//            //  leading: Icon(Icons.assignment,color: AppColors.tertiaryColor,),
//            );
//              }),
//        )
//
//       ],))
//     ,])
// );
//
// }
import 'package:flutter/cupertino.dart';

Widget Info(BuildContext context){
  return
    Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width * 0.17,
    color: AppColors.backgroundColor,
    child: Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        CircleAvatar(
          radius: 40,
          backgroundColor: AppColors.primaryColor,
          child: CircleAvatar(
            radius: 37,
            backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.Xu4K4Q8NxBSicuArFbF06QHaHa?rs=1&pid=ImgDetMain"),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        Text(
          "esraa dahman",
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 10,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.005),
        Text(
          "0123456",
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 15,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.005),
  Container(
    padding: EdgeInsets.fromLTRB(15, 5, 20, 0),
    alignment: Alignment.topLeft,
  child: Text(
          "Assignment",
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 15,
          ),
        ),),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width * 0.02),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          "Assaignment ${index + 1}",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 14,
                          ),
                        ),
                        subtitle: Text("Due Date 21/12/2024",style: TextStyle(color: AppColors.primaryColor,fontSize: 10),),
                       leading: Icon(Icons.assignment,color: AppColors.primaryColor,),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(15, 5, 20, 0),
          alignment: Alignment.topLeft,
          child: Text(
            "Notifications",
            style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 15,
            ),
          ),),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width * 0.02),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          "Assaignment ${index + 1}",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 14,
                          ),
                        ),
                        subtitle: Text("Due Date 21/12/2024",style: TextStyle(color: AppColors.primaryColor,fontSize: 10),),
                        leading: Icon(Icons.assignment,color: AppColors.primaryColor,),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
