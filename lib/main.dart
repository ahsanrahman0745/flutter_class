import 'package:flutter/material.dart';
import 'package:flutter_class/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScrc(),


    );
  }
}

//
//
// main(){
//   runApp(const FirstClass());
// }
//
//
// class FirstClass extends StatelessWidget {
//   const FirstClass({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomeView(),
//     );
//   }
// }