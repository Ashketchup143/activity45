import 'dart:html';

import 'package:activity45/screens/appbar.dart';
import 'package:activity45/screens/login.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/':(context) => const MyHomePage(title: "Home"),
        '/login':(context) => const Login(),
        '/appbar':(context) => const appbar(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: LayoutBuilder(
        builder: (BuildContext , BoxConstraints constraints){
          if(constraints.maxWidth>600){
            return webUI(context);
          } else{
            return mobileUI(context);
          }
        },
       )
    );
  }

  Widget webUI(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child:
      Stack(
        children: [
          Row(
            children: [
              ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, "/login");
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)
                )
              ),
              child: const Text("Go to login", style: TextStyle(color: Colors.black),),
              
              ),
            ],
          )
        ],
      )
    );
  }

  Widget mobileUI(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
    );
  }

  
}
