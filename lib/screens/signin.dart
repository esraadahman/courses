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
  runApp(Signin());
}

class Signin extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Signin> {
  bool save = true;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth > 700){
        return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
            backgroundColor: AppColors.secondaryColor,
            body:SingleChildScrollView(child: Column(children: [
              SizedBox(height:  MediaQuery.sizeOf(context).height*.08,),
              Container(
                margin: EdgeInsets.only(bottom: 50),
                width: MediaQuery.sizeOf(context).width*0.25,
                height:  MediaQuery.sizeOf(context).height*.10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/1181240/pexels-photo-1181240.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      fit:BoxFit.cover,
                    )
                ),
              ),
              SizedBox(height:  MediaQuery.sizeOf(context).height*.04,),
              Container(
                width: MediaQuery.sizeOf(context).width*0.8,
                height:  MediaQuery.sizeOf(context).height*.1,
                margin: EdgeInsets.only(left: 40),
                child:
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    filled: true,
                    fillColor: Colors.green[100],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: AppColors.secondaryColor,
                        width: 0.3,
                      ),
                    ),
                    hintText: "Enter your Email ",
                    hintStyle: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 10,
                    ) ,
                    prefixIcon: Icon(Icons.email_sharp, color: AppColors.primaryColor,),
                  ),
                ),
              ),
              SizedBox(height:  MediaQuery.sizeOf(context).height*.04,),
              Container(
                width: MediaQuery.sizeOf(context).width*0.8,
                height:  MediaQuery.sizeOf(context).height*.1,
                margin: EdgeInsets.only(left: 40),
                child:
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    filled: true,
                    fillColor: Colors.green[100],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: AppColors.secondaryColor,
                        width: 0.3,
                      ),
                    ),
                    hintText: "Enter your Password ",
                    hintStyle: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 10,
                    ) ,
                    suffixIcon: Icon(Icons.visibility, color: AppColors.primaryColor,),
                    prefixIcon: Icon(Icons.lock, color: AppColors.primaryColor,),
                  ),
                ),
              ),
              SizedBox(height:  MediaQuery.sizeOf(context).height*.01,),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width:  MediaQuery.sizeOf(context).width*.15,),
                  Checkbox(value: save, onChanged: (value){
                    value=!save;
                  }),
                  SizedBox(width:  MediaQuery.sizeOf(context).width*.06,),
                  Text("Remember me"),
                ],),
              SizedBox(height:  MediaQuery.sizeOf(context).height*.05,),
              ElevatedButton(
                child: const Text('Login ',style: TextStyle(
                    color: Colors.black,fontSize: 30),),
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
              ),
              SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
              Row(children: [
                SizedBox(width: MediaQuery.sizeOf(context).width*.33,),
                Text(" ------------------- or connect with Google ------------",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
              ]),
              SizedBox(height:  MediaQuery.sizeOf(context).height*.05,
                width: MediaQuery.sizeOf(context).width*.6,
              ),
              ElevatedButton(
                child: Row(children: [
                  SizedBox(width: MediaQuery.sizeOf(context).width*.01,),
                  Icon(Icons.facebook_sharp,color: AppColors.secondaryColor,size: 40,),
                  SizedBox(width: MediaQuery.sizeOf(context).width*.1,),
                  Text('Sign up with Google ',style: TextStyle(
                      color: Colors.black,fontSize: 30),),],),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.sizeOf(context).width*0.6,
                      MediaQuery.sizeOf(context).height*0.08 ),
                  backgroundColor: AppColors.primaryColor,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                  ),
                ),
              ),
              SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
              Row(children: [
                SizedBox(width: MediaQuery.sizeOf(context).width*.3,),
                Text("Does not have account ?",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                SizedBox(width: MediaQuery.sizeOf(context).width*.03,),
                TextButton(
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20,color: AppColors.primaryColor),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ]),
            ],),)

        ));}

      else{
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home:Scaffold(
                backgroundColor: AppColors.secondaryColor,
                body:SingleChildScrollView(child: Column(children: [
                  SizedBox(height:  MediaQuery.sizeOf(context).height*.08,),
                  Container(
                    margin: EdgeInsets.only(bottom: 50),
                    width: MediaQuery.sizeOf(context).width*0.25,
                    height:  MediaQuery.sizeOf(context).height*.10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/1181240/pexels-photo-1181240.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          fit:BoxFit.cover,
                        )
                    ),
                  ),
                  SizedBox(height:  MediaQuery.sizeOf(context).height*.04,),
                  Container(
                    width: MediaQuery.sizeOf(context).width*0.8,
                    height:  MediaQuery.sizeOf(context).height*.1,
                    margin: EdgeInsets.only(left: 40),
                    child:
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        filled: true,
                        fillColor: Colors.green[100],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: AppColors.secondaryColor,
                            width: 0.3,
                          ),
                        ),
                        hintText: "Enter your Email ",
                        hintStyle: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 10,
                        ) ,
                        prefixIcon: Icon(Icons.email_sharp, color: AppColors.primaryColor,),
                      ),
                    ),
                  ),
                  SizedBox(height:  MediaQuery.sizeOf(context).height*.04,),
                  Container(
                    width: MediaQuery.sizeOf(context).width*0.8,
                    height:  MediaQuery.sizeOf(context).height*.1,
                    margin: EdgeInsets.only(left: 40),
                    child:
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        filled: true,
                        fillColor: Colors.green[100],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: AppColors.secondaryColor,
                            width: 0.3,
                          ),
                        ),
                        hintText: "Enter your Password ",
                        hintStyle: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 10,
                        ) ,
                        suffixIcon: Icon(Icons.visibility, color: AppColors.primaryColor,),
                        prefixIcon: Icon(Icons.lock, color: AppColors.primaryColor,),
                      ),
                    ),
                  ),
                  SizedBox(height:  MediaQuery.sizeOf(context).height*.01,),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(width:  MediaQuery.sizeOf(context).width*.15,),
                      Checkbox(value: save, onChanged: (value){
                        value=!save;
                      }),
                      SizedBox(width:  MediaQuery.sizeOf(context).width*.06,),
                      Text("Remember me"),
                    ],),
                  SizedBox(height:  MediaQuery.sizeOf(context).height*.05,),
                  ElevatedButton(
                    child: const Text('Login ',style: TextStyle(
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
                  ),
                  SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                  Row(children: [
                    SizedBox(width: MediaQuery.sizeOf(context).width*.025,),
                    Text("                     ------------------- or connect with Google ------------",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                  ]),
                  SizedBox(height:  MediaQuery.sizeOf(context).height*.05,),
                  ElevatedButton(
                    child: Row(children: [
                      Icon(Icons.facebook_sharp,color: AppColors.secondaryColor,),
                      Text('Sign up with Google ',style: TextStyle(
                          color: Colors.black,fontSize: 20),),],),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.sizeOf(context).width*0.6,
                          MediaQuery.sizeOf(context).height*0.08 ),
                      backgroundColor: AppColors.primaryColor,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                      ),
                    ),
                  ),
                  SizedBox(height:  MediaQuery.sizeOf(context).height*.03,),
                  Row(children: [
                    SizedBox(width: MediaQuery.sizeOf(context).width*.03,),
                    Text("Dose not have account ?",style: TextStyle(color: AppColors.TextColor , fontSize: 15),),
                    SizedBox(width: MediaQuery.sizeOf(context).width*.03,),
                    TextButton(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 20,color: AppColors.primaryColor),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ]),
                ],),)

            ));

      }


    });
  }}