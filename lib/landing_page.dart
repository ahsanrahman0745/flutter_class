import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/todo_model.dart';
import 'nazish.dart';


class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {




  List<TodoModel> list = [
    TodoModel(
      id: 30,
      status: Status.complete,
      title: "kuch bi ho sqta ha",
      dis: "discretion of this tile"
    ),
    TodoModel(
      id: 31,
        title: "kuch bi ho sqta ha 1",
        dis: "discretion of this tile 1"
    ),
    TodoModel(
      id: 32,
        title: "kuch bi ho sqta ha 2",
        dis: "discretion of this tile 2",
        fav: true,
    ),
    TodoModel(
      id: 33,
        title: "kuch bi ho sqta ha 3",
        dis: "discretion of this tile 3"
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = [
      TodoModel(
          id: 30,
          status: Status.complete,
          title: "kuch bi ho sqta ha",
          dis: "discretion of this tile"
      ),
      TodoModel(
          id: 31,
          title: "kuch bi ho sqta ha 1",
          dis: "discretion of this tile 1"
      ),
      TodoModel(
        id: 32,
        title: "kuch bi ho sqta ha 2",
        dis: "discretion of this tile 2",
        fav: true,
      ),
      TodoModel(
          id: 33,
          title: "kuch bi ho sqta ha 3",
          dis: "discretion of this tile 3"
      ),
    ];
    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50,left: 30),
                  child: Text("Daily For's",style: TextStyle(color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 30),
                  child: Container(
                    height: 80,
                    width: 350,
                    decoration: BoxDecoration(color: Color(0xFF54DACC),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Icon(Icons.check_box,size: 35,color: Colors.green,),
                        SizedBox(width: 10,),
                        Text("Completed",style: TextStyle(color: Colors.white,fontSize: 20,
                            fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 30),
                  child: Text("LandingPage Tasks",style: TextStyle(color: Colors.white,
                      fontSize: 25),),
                ),


                ListView.builder(
                 itemCount: list.length,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                  return                 Padding(
                    padding: const EdgeInsets.only(top: 10,left: 25),
                    child: Container(
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: (){
                                if(list[index].status == Status.complete){
                                  setState(() {
                                    list[index].status=Status.active;
                                  });
                                }else {
                                  setState(() {
                                    list[index].status=Status.complete;
                                  });
                                }
                              },
                              child: Icon(list[index].status == Status.complete ? Icons.check_circle_outline :Icons.circle_outlined ,size: 30,)),
                          SizedBox(width: 10,),
                          InkWell(
                              onTap: (){
                                setState(() {
                                  list[index].fav = !list[index].fav!;
                                });
                              },child: Icon(list[index].fav! ?  Icons.favorite : Icons.favorite_border,size: 30,color: list[index].fav! ? Colors.red : Colors.grey,)),
                          SizedBox(width: 20,),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 34),
                                child: Text(list[index].title,style: TextStyle(color: Colors.white,
                                    fontSize: 22),),
                              ),
                              Text("Task 1",style: TextStyle(color: Colors.white,fontSize: 20),)
                            ],
                          ),
                          SizedBox(width: 30,),
                      InkWell(
                        onTap: (){
                          setState(() {
                            list.removeAt(index);
                          });
                        },
                          child: Icon(Icons.delete_outline_outlined,size: 40,color: Colors.red,)),
                        ],
                      ),
                    ),
                  );
                })

              ],
            ),

            IconButton(onPressed:(){
            }, icon:Icon(Icons.add_circle,size: 60,color: Colors.deepPurple,))
          ],
        ),
      ),
    );
  }
}