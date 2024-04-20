import 'package:flutter/material.dart';
import 'package:flutter_class/view/home_view.dart';

main(){
  runApp(const FirstClass());
}


class FirstClass extends StatelessWidget {
  const FirstClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}
