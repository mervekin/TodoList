import 'package:flutter/material.dart';
import 'package:todo_app/constants/color.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    // double deviceHeight = MediaQuery.of(context).size.height;
    // double deviceWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                      image: AssetImage("lib/assets/images/Header.png"),
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
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  "Study Lessons",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  "Study Lessons",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  "Study Lessons",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  "Study Lessons",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  "Study Lessons",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
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
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  "Study Lessons",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  "Study Lessons",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  "Study Lessons",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  "Study Lessons",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  "Study Lessons",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {}, child: const Text("Add new Task"))
            ],
          ),
        ),
      ),
    );
  }
}
