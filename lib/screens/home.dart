import 'package:courses/theems/appcolor.dart';
import 'package:courses/wedget/drawer.dart';
import 'package:courses/wedget/info.dart';
import 'package:courses/wedget/navi.dart';
import 'package:courses/wedget/Course.dart';
import 'package:courses/wedget/notification.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../model/corcesmodel.dart';

void main() {
  runApp(HomeScreen(title: ''));
}

class HomeScreen extends StatefulWidget {
  final String title;

  HomeScreen({required this.title});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  Navi(context,1),
                  Expanded(
                      child: SingleChildScrollView(
                        child:
                        Column(
                          children: [
                            SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                            Row(children: [
                              SizedBox(width: MediaQuery.sizeOf(context).width*.03,),
                              Text("Hi esraa \n Welcome to our website",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                              SizedBox(width: MediaQuery.sizeOf(context).width*.3,),
                              IconButton(onPressed: (){}, icon: Icon(Icons.color_lens_sharp, color: AppColors.primaryColor, size: 25,)),
                              SizedBox(width: MediaQuery.sizeOf(context).width*.002,),
                              IconButton(onPressed: (){}, icon: Icon(Icons.language_sharp, color: AppColors.primaryColor, size: 25,)),
                              SizedBox(width: MediaQuery.sizeOf(context).width*.002,),
                              IconButton(onPressed: (){}, icon: Icon(Icons.logout, color: AppColors.primaryColor, size: 25,)),
                            ],),
                            SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                            Container(
                              width: MediaQuery.sizeOf(context).width*0.8,
                              height:  MediaQuery.sizeOf(context).height*.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage("https://images.pexels.com/photos/733856/pexels-photo-733856.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                      fit: BoxFit.cover
                                  )
                              ),
                              child: Column(children: [
                                SizedBox(width: MediaQuery.sizeOf(context).width*.03,),
                                Padding(padding:EdgeInsets.fromLTRB(10, 10, 100, 50) ,child:
                                Text("Learn the latest digital skills\n       for tomorrow's jobs",style: TextStyle(color: Color.fromRGBO(18, 55, 42, 10) , fontSize: 30,fontWeight: FontWeight.bold),),)

                              ],),
                            ),
                            SizedBox(height:  MediaQuery.sizeOf(context).height*.02,),
                            Container(
                                height:  MediaQuery.sizeOf(context).height*.3,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 6,
                                    itemBuilder: (context,index){
                                      return Padding(padding: EdgeInsets.fromLTRB(5, 0, 5, 0) ,
                                          child: CourseWidgit(context));
                                    }
                                )),
                            SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                            Container(
                              child: GridView.builder(
                                shrinkWrap: true,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10),
                                itemCount: 6,
                                itemBuilder:(context,index){
                                  return Padding(padding: EdgeInsets.all(15),
                                      child: Container(
                                        width: MediaQuery.sizeOf(context).width*0.3,
                                        // width: 200,
                                        height:  MediaQuery.sizeOf(context).height*.25,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: AppColors.primaryColor
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
                          ],),
                      )),
                  Info(context),

                ],
              ),

              floatingActionButton: FloatingActionButton(
                onPressed:() {},
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ), // This trailing comma makes auto-formatting nicer for build methods.
            ));
      }
      else return Scaffold(
        backgroundColor: AppColors.secondaryColor,
        appBar: AppBar(
          backgroundColor:  AppColors.backgroundColor,
          title: Text("Home"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
            Row(children: [
              SizedBox(width: MediaQuery.sizeOf(context).width*.03,),
              Text("Hi esraa \n Welcome to our website",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
            ],),
            SizedBox(height:  MediaQuery.sizeOf(context).height*.05,),
            Row(children: [
              SizedBox(width: MediaQuery.sizeOf(context).width*.03,),
              Column(children: [
                Text("Courses",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                SizedBox(height:  MediaQuery.sizeOf(context).height*.02,),
                Container(
                  width: MediaQuery.sizeOf(context).width*.15,
                  height: 4,
                  color: AppColors.primaryColor,
                )
              ],)

            ],),
            SizedBox(height:  MediaQuery.sizeOf(context).height*.02,),
            Container(
              height:  MediaQuery.sizeOf(context).height*.3,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return Padding(padding: EdgeInsets.all(10),
                      child: CourseWidgit(context),
                  );
                },
              ),
            ),
            SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
            Row(children: [
              SizedBox(width: MediaQuery.sizeOf(context).width*.03,),
              Column(children: [
                Text("Notifications",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                SizedBox(height:  MediaQuery.sizeOf(context).height*.02,),
                Container(
                  width: MediaQuery.sizeOf(context).width*.2,
                  height: 4,
                  color: AppColors.primaryColor,
                )
              ],)

            ],),
            SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.sizeOf(context).height * 0.13,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(5),
                    child: notif_show(context,
                    image: "https://th.bing.com/th/id/OIP.hci2ZieEahw_70XeAIAnGgHaEK?rs=1&pid=ImgDetMain",
                    title:"progress 1",
                    subtitle: "progress 2"
                    )
                  );
                },
              ),
            ),
            SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
            Row(children: [
              SizedBox(width: MediaQuery.sizeOf(context).width*.03,),
              Column(children: [
                Text("Your progress",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                SizedBox(height:  MediaQuery.sizeOf(context).height*.02,),
                Container(
                  width: MediaQuery.sizeOf(context).width*.2,
                  height: 5,
                  color: AppColors.primaryColor,
                )
              ],)

            ],),
            SizedBox(height: MediaQuery.sizeOf(context).height*.03,),
            Container(
              height: MediaQuery.sizeOf(context).height*0.33,
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
                itemCount: 10,
                itemBuilder:(context,index){
                  return Padding(padding: EdgeInsets.all(10),
                      child:CourseWidgit(context) ) ;
                } ,
              ),
            )
          ],),
        ),
        drawer: drawer(context),
      );
    });
  }
}


