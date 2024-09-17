import 'dart:ui';

import 'package:courses/screens/course.dart';
import 'package:courses/screens/courses.dart';
import 'package:courses/screens/home.dart';
import 'package:courses/screens/homepage.dart';
import 'package:courses/screens/profile.dart';
import 'package:courses/screens/signin.dart';
import 'package:courses/screens/signup.dart';
import 'package:courses/theems/appcolor.dart';
import 'package:courses/wedget/info.dart';
import 'package:courses/wedget/navi.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/SplashScreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      routerConfig: router
    );

  }
  final GoRouter router = GoRouter(
    initialLocation: '/HomeScreen',
    routes: [
      GoRoute(
        path: '/HomeScreen',
        builder: (context, state) {
          return HomeScreen(title: "esraa");
        },
      ),
      GoRoute(
        path: '/',
        builder: (context, state) {
          return HomePage(title: "ff");
        },
      ),
      GoRoute(
        path: '/SplashScreen',
        builder: (context, state) {
          return SplashScreen();
        },
      ),
      GoRoute(
        path: '/Courses',
        builder: (context, state) {
          return Courses();
        },
      ),
      GoRoute(
        path: '/Courses/Course',
        builder: (context, state) {
          return Course();
        },
      ),
      GoRoute(
        path: '/Profile',
        builder: (context, state) {
          return Profile();
        },
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) {
          return Signup();
        },
      ),
      GoRoute(
        path: '/signin',
        builder: (context, state) {
          return Signin();
        },
      ),
    ],
  );
  }

// class MyCustomScrollBehavior extends MaterialScrollBehavior{
//   Set<PointerDeviceKind> get dergDecices =>{
//     PointerDeviceKind.touch,
//     PointerDeviceKind.mouse,
//   };
// }

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}