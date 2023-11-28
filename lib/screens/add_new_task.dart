import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_app/constants/color.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
          backgroundColor: HexColor(backgroundColor),
//          appBar: AppBar(),
          body: Column(
            children: [
              Container(
                width: deviceWidth,
                height: deviceHeight / 10,
                color: Colors.purple,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    const Expanded(
                        child: Text(
                      "Add new task ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 21),
                      textAlign: TextAlign.center,
                    ))
                  ],
                ),
              ),
              const Text("Task Title"),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: TextField(
                    decoration:
                        InputDecoration(filled: true, fillColor: Colors.white),
                  ))
            ],
          )),
    );
  }
}
