import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/todo_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<TodoModel> todoModelList = [
    TodoModel(
        id: 1, title: "kuch bi title ho sqta 1", dis: "kuch bi dis ho sqta"),
    TodoModel(
        id: 2, title: "kuch bi title ho sqta 2", dis: "kuch bi dis ho sqta"),
    TodoModel(
        id: 3, title: "kuch bi title ho sqta 3", dis: "kuch bi dis ho sqta"),
    TodoModel(
        id: 4, title: "kuch bi title ho sqta 4", dis: "kuch bi dis ho sqta"),
    TodoModel(
        id: 5, title: "kuch bi title ho sqta 5", dis: "kuch bi dis ho sqta"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Todo App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemCount: todoModelList.length,
              itemBuilder: (context, index) {
                TodoModel todoModel = todoModelList[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.greenAccent,
                        child: Text(
                          todoModel.id.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(todoModel.title,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                                  Text(todoModel.dis,),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(onPressed: (){
                                  print("index no $index");
                                  print("todoModelList length ${todoModelList.length}");
                                  setState(() {
                                    todoModelList.add(todoModel);
                                  });
                                  print("todoModelList length ${todoModelList.length}");
                                }, icon: Icon(Icons.copy,color: Colors.grey,)),
                                IconButton(onPressed: (){
                                  print("index no $index");
                                  print("todoModelList length ${todoModelList.length}");
                                  setState(() {
                                    todoModelList.removeAt(index);
                                  });
                                  print("todoModelList length ${todoModelList.length}");
                                }, icon: Icon(Icons.delete,color: Colors.red,)),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
