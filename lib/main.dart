import 'dart:ui';
import 'package:page_transition/page_transition.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          backgroundColor: Colors.black,
            splash:Center(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors:[ Colors.purple,Colors.blue],
                  begin:Alignment.bottomLeft,
                  end: Alignment.topRight,
                  stops: [0.5,0]),

                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.castle,
                      size: 60,
                      color: Colors.white,
                    ),
                    Text('version : 0.0.1',style: TextStyle(fontFamily:'pacifico',color: Colors.white),),

                  ],
                ),
              ),
            ),
            duration: 3000,
            nextScreen: MyHomePage(),
          splashTransition: SplashTransition.slideTransition,
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Mohammad Ehsan')),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 180,
          flexibleSpace: Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150),
                    topRight: Radius.circular(80)),
                color: Color.fromARGB(255, 117, 39, 176)),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50.0,
                  child: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                    size: 100,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person_outline_sharp,
                  color: Colors.deepPurple,
                ),
                title: Text('Mohammad Ehsan Nicksarisht'),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.calendar_month,
                  color: Colors.deepPurple,
                ),
                title: Text('Birthday'),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.phone_iphone_rounded,
                  color: Colors.deepPurple,
                ),
                title: Text('+93 790234314'),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.facebook,
                  color: Colors.deepPurple,
                ),
                title: Text('Facebook Account'),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.email_outlined,
                  color: Colors.deepPurple,
                ),
                title: Text('ehsan.nick16@gmail.com'),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.deepPurple,
                ),
                title: Text('Password'),
                trailing: Icon(
                  Icons.change_circle_outlined,
                  color: Colors.deepPurple,
                ),
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Colors.deepPurple,
                        minimumSize: Size(230, 50)),
                    onPressed: () {},
                    child: Text('Edit Profile')),
              ),
            ],
          ),
        ));
  }
}
