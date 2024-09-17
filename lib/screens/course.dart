import 'package:courses/theems/appcolor.dart';
import 'package:courses/wedget/info.dart';
import 'package:courses/wedget/navi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Course());
}
class Course extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
          backgroundColor: AppColors.primaryColor,
          body:
            Row(
              children:[
                Navi(context,4),
                Expanded(  child: SingleChildScrollView(
                   child:
                        Column(
                           children: [
                             SizedBox(height:  MediaQuery.sizeOf(context).height*.05,),
                             Container(
                               width: MediaQuery.sizeOf(context).width*0.9,
                               height:  MediaQuery.sizeOf(context).height*.6,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   image: DecorationImage(
                                       image: NetworkImage("https://as2.ftcdn.net/v2/jpg/03/98/33/01/1000_F_398330178_jjQubWNgchLOaJGZ925sI3KR6LkV8VUi.jpg"),
                                       fit: BoxFit.cover
                                   )
                               ),
                               child: Column(children: [
                                 //SizedBox(height: MediaQuery.sizeOf(context).height*.03,),
                                 Align(
                                  heightFactor: 2,
                                  alignment: Alignment(-0.9,2.5),
                                child:   Text("Course name :",
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 30,fontWeight: FontWeight.bold),),),
                                 Align(
                                   heightFactor: 2.8,
                                   alignment: Alignment(-0.9,1),
                                   child:   Text("Course Code : ",
                                     style: TextStyle(color: Colors.white ,
                                         fontSize: 25,fontWeight: FontWeight.w900),),),
                                 Align(
                                   heightFactor: 2.8,
                                   alignment: Alignment(0.9,2),
                                   child:   Text("Presented By :Dr.ESRAA ",
                                     style: TextStyle(color: Colors.white ,
                                         fontSize: 25,fontWeight: FontWeight.w900),),)
                               ],),
                             ),
                             SizedBox(height:  MediaQuery.sizeOf(context).height*.05,),
                             Row(children: [
                               SizedBox(width: MediaQuery.sizeOf(context).width*.03,),
                               Column(children: [
                                 Text("Course description",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                                 SizedBox(height:  MediaQuery.sizeOf(context).height*.02,),
                                 Container(
                                   width: MediaQuery.sizeOf(context).width*.13,
                                   height: 2,
                                   color: AppColors.backgroundColor,
                                 )
                               ],)

                             ],),
                             SizedBox(height:  MediaQuery.sizeOf(context).height*.05,),
                              Container(
                        height:  MediaQuery.sizeOf(context).height*.2,
                        width:  MediaQuery.sizeOf(context).width*.7,
                        decoration: BoxDecoration(
                          color: AppColors.navitem,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: AppColors.secondaryColor , width: 0.3),
                        ),
                          child: Row(children: [
                            SizedBox(width: MediaQuery.sizeOf(context).width*.03,),
                            Column(children: [
                              Align(
                                heightFactor: 2,
                                alignment: Alignment(-0.9,1.5),
                                child:   Text("Course Content:",
                                  style: TextStyle(color: AppColors.TextColor,
                                      fontSize: 20,fontWeight: FontWeight.bold),),),
                              SizedBox(height:  MediaQuery.sizeOf(context).height*.02,),
                              Container(
                                width: MediaQuery.sizeOf(context).width*.13,
                                height: 2,
                                color: AppColors.TextColor,
                              )
                            ],)

                          ],),
                              ),
                             SizedBox(height:  MediaQuery.sizeOf(context).height*.05,),
                             Container(
                               height:  MediaQuery.sizeOf(context).height,
                                   child: GridView.builder(
                                     shrinkWrap: true,
                                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,crossAxisSpacing: 10,mainAxisSpacing: 10),
                                     itemCount: 10,
                                     itemBuilder:(context,index){
                                       return Padding(padding: EdgeInsets.all(5),
                                           child: Container(
                                             width: MediaQuery.sizeOf(context).width*0.2,
                                             // width: 200,
                                             height:  MediaQuery.sizeOf(context).height*.2,
                                             decoration: BoxDecoration(
                                                 borderRadius: BorderRadius.circular(20),
                                                 color: AppColors.backgroundColor
                                             ),
                                             child: Column(children: [
                                               SizedBox(width: MediaQuery.sizeOf(context).width*.02,),
                                               Text("course ${index+1}",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                                               SizedBox(width: MediaQuery.sizeOf(context).width*.02,),
                                               Text("descrption",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                                             ],),
                                           ) ) ;
                                     } ,
                                   ),

                             )
                      ]))),
                Info(context),

              ],
            ),


        ));
  }
}
