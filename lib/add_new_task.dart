import 'package:flutter/material.dart';
import 'package:flutter_class/landing_page.dart';



class AddNewTask extends StatefulWidget {
  const AddNewTask({Key? key}) : super(key: key);

  @override
  State<AddNewTask> createState() => _AddNewTaskState();
}

class _AddNewTaskState extends State<AddNewTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 350, top: 22),
            child: Icon(
              Icons.clear_rounded,
              color: Colors.purple,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: Text(
              "Add new ",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 23,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: TextField(
              style: TextStyle(fontSize: 10, color: Colors.white),
              decoration: InputDecoration(
                labelText: "Text",
                hintStyle: TextStyle(fontSize: 38, color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 23,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: TextField(
              style: TextStyle(fontSize: 10, color: Colors.white),
              decoration: InputDecoration(
                labelText: "Case",
                hintStyle: TextStyle(fontSize: 38, color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 23,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: TextField(
              style: TextStyle(fontSize: 10, color: Colors.white),
              decoration: InputDecoration(
                labelText: "Enter",
                hintStyle: TextStyle(fontSize: 38, color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
                suffixIcon: Icon(Icons.message_outlined),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              onPressed: () {
               Navigator.push(context,MaterialPageRoute(builder: (context)=> LandingPage()));
              },
              icon: Icon(Icons.send),
              label: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
