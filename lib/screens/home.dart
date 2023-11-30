import 'package:flutter/material.dart';
import 'package:todo_app/constants/tasktype.dart';
import 'package:todo_app/model/task.dart';
import 'package:todo_app/screens/add_new_task.dart';
import 'package:todo_app/todoitem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<String> todo = ["Study Lessons", "Run 5k", "go to party"];
  // List<String> completed = ["gme meetup", " rth"];

  List<Task> todo = [
    Task(
        type: TaskType.note,
        title: "Study Lessons",
        description: "Study comp117",
        isCompleted: false),
    Task(
        type: TaskType.contest,
        title: "Run 5k",
        description: "run 5 km",
        isCompleted: false),
    Task(
        type: TaskType.calendar,
        title: "go to party",
        description: "Attend party",
        isCompleted: false)
  ];

  void addNewTask(Task newTask) {
    setState(() {
      todo.add(newTask);
    });
  }

  List<Task> completed = [
    Task(
        type: TaskType.contest,
        title: "Run 5k",
        description: "run 5 km",
        isCompleted: false),
    Task(
        type: TaskType.calendar,
        title: "go to party",
        description: "Attend party",
        isCompleted: false)
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              //Header
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  image: DecorationImage(
                      image: AssetImage("lib/assets/images/header.png"),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text("October 20,2023",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        "My ToDo List",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              //TopColumn
              Expanded(
                // Flexible(
                // flex: 3, layout örnei expand
                //scrollu aktif etmek için yapılır
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SingleChildScrollView(
                    child: ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: todo.length,
                        itemBuilder: (context, index) {
                          return TodoItem(
                            task: todo[index],
                          );
                        }),
                  ),
                ),
              ),
              //DRY Dont repaet ypur self custom widget yapacağız.
              //Completed text
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Completed",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
              //bottom column dfgslşkşgşks
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: completed.length,
                      itemBuilder: (context, index) {
                        return TodoItem(task: completed[index]);
                      },
                    ),
                  ),
                ),
              ),

              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AddNewTaskScreen(
                        addNewTask: (newTask) => addNewTask(newTask),
                      ),
                    ));
                  },
                  child: const Text("Add new Task"))
            ],
          ),
        ),
      ),
    );
  }
}
