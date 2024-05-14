import 'package:flutter/material.dart';


class MyAppp extends StatelessWidget {
  const MyAppp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF54DACC),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100,left: 320),
              child: Icon(Icons.arrow_forward_ios,color: Color(0xFF024E9B),size: 45,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 160),
              child: Text("Completed",style: TextStyle(fontSize:30,color: Colors.white,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)

                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(Icons.check_circle,size: 50,color: Color(0xFF54DACC)),
                    ),
                    SizedBox(width: 5,),
                    Icon(Icons.ac_unit_sharp,color: Colors.yellowAccent,size: 50,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 33),
                          child: Text("Task 1 for Flutter",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 85),
                          child: Text("Flutter",style: TextStyle(fontSize: 18,color: Colors.black26,fontWeight: FontWeight.bold)),
                        ),



                      ],
                    ),
                    SizedBox(width: 20,),
                    Icon(Icons.delete_outlined,color: Colors.redAccent,size: 40,)

                  ],
                ),

              ),




            ),

          ],
        ),
      ),
    );
  }
}