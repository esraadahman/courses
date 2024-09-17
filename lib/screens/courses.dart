import 'package:courses/theems/appcolor.dart';
import 'package:courses/wedget/courses.dart';
import 'package:courses/wedget/drawer.dart';
import 'package:courses/wedget/info.dart';
import 'package:courses/wedget/navi.dart';
import 'package:courses/wedget/Course.dart';
import 'package:flutter/material.dart';

import '../model/corcesmodel.dart';

void main() {
  runApp(Courses());
}

class Courses extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth > 700){
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home:Scaffold(
              backgroundColor: AppColors.secondaryColor,
              body:
              Row(
                children:[
                  Navi(context,3),
                  Expanded(
                      child: SingleChildScrollView(
                        child:
                        Column(
                          children: [
                            SizedBox(height:  MediaQuery.sizeOf(context).height*.05,),
                            Row(children: [
                              SizedBox(width: MediaQuery.sizeOf(context).width*.05,),
                              Container(
                                width:  MediaQuery.sizeOf(context).width*.65,
                                height:  MediaQuery.sizeOf(context).height*.1,
                                decoration: BoxDecoration(
                                  color: AppColors.navitem,
                                  borderRadius: BorderRadius.circular(70),
                                  border: Border.all(color: AppColors.primaryColor , width: 0.3),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(70),
                                      borderSide: BorderSide(
                                        color: AppColors.secondaryColor,
                                        width: 0.3,
                                      ),
                                    ),
                                    hintText: "Search",
                                    hintStyle: TextStyle(
                                      color: AppColors.primaryColor,
                                      fontSize: 10,
                                    ) ,
                                    prefixIcon: Icon(Icons.search_rounded, color: AppColors.primaryColor,),
                                    // filled: true, // Set to true to enable filling the background
                                    fillColor: AppColors.backgroundColor,
                                  ),
                                ),
                              )
                            ],),
                            SizedBox(height:  MediaQuery.sizeOf(context).height*.05,),
                            Container(
                              height:  MediaQuery.sizeOf(context).height,
                              child: GridView.builder(
                                itemCount: 10,
                                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10),
                                itemBuilder: (context,index){
                                  return Container(
                                    height:  MediaQuery.sizeOf(context).height*.2,
                                    width:  MediaQuery.sizeOf(context).height*.2,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(10),
                                      //border: Border.all(color: AppColors.primaryColor , width: 0.3),
                                    ),
                                    child:Column(children: [
                                      SizedBox(height:  MediaQuery.sizeOf(context).height*.01,),
                                      Container(
                                        height:  MediaQuery.sizeOf(context).height*.1,
                                        width:  MediaQuery.sizeOf(context).height*.1,
                                        decoration: BoxDecoration(
                                          color: AppColors.secondaryColor,
                                          borderRadius: BorderRadius.circular(10),
                                          //border: Border.all(color: AppColors.primaryColor , width: 0.3),
                                        ),
                                      ),
                                      SizedBox(height:  MediaQuery.sizeOf(context).height*.01,),
                                      Text("courses ",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                                    ],) ,
                                  );

                                },
                              ),

                            )
                          ],),
                      )),
                  Info(context),

                ],
              ),
            ));
      }
    else{
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home:Scaffold(
            backgroundColor: AppColors.secondaryColor,
                appBar: AppBar(
                  backgroundColor:  AppColors.backgroundColor,
                  title: Text("Courses"),
                  centerTitle: true,
                ),
            drawer: drawer(context),
            body: SingleChildScrollView(
              child:Column(children: [
                SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                Container(
                  height: MediaQuery.sizeOf(context).height*0.05,
                  width: MediaQuery.sizeOf(context).width*0.6,
                  decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: AppColors.secondaryColor,width: 0.3),
                  ),
                  child:
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.green[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: AppColors.secondaryColor,
                          width: 0.3,
                        ),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 10,
                      ) ,
                      prefixIcon: Icon(Icons.search_rounded, color: AppColors.primaryColor,),
                    ),
                    ),
                  ),

                SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                Row(children: [
                  SizedBox(width: MediaQuery.sizeOf(context).width*.03,),
                  Text("Your Courses :",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                ]),
                  Container(
                    height: MediaQuery.sizeOf(context).height,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index){
                        return Padding(padding: EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 10),
                          child: courses(context,
                          image: "https://th.bing.com/th/id/OIP.hci2ZieEahw_70XeAIAnGgHaEK?rs=1&pid=ImgDetMain",
                          title: "course $index",
                          subtitle: "esraa",
                          code: "0000 $index",
                          )
                        );
                      },
                    ),
                  )

              ],),)
            ));
      }
    });

  }}