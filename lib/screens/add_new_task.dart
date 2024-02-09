import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todouygulamasi/constants/color.dart';
import 'package:todouygulamasi/constants/tasktype.dart';
import 'package:todouygulamasi/model/task.dart';

class AddNewTaskPage extends StatefulWidget {
  const AddNewTaskPage({super.key, required this.addNewTask});
  final void Function(Task newTask) addNewTask;
  // Passing Function as parameter

  @override
  State<AddNewTaskPage> createState() => _AddNewTaskPageState();
}

class _AddNewTaskPageState extends State<AddNewTaskPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  TaskType taskType = TaskType.note;

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor(backgroundColor),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ************ Header **************
              Container(
                height: deviceHeight / 10,
                width: deviceWidth,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/assets/images/header.png"),
                      fit: BoxFit.cover),
                ),
                child: Row(
                  children: [
                    IconButton(
                      style: const ButtonStyle(
                          iconSize: MaterialStatePropertyAll(40)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.close, color: Colors.white),
                    ),
                    const Expanded(
                      child: Text(
                        "Add New Task",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Column(
                    children: [
                      //Task Name
                      const Row(
                        children: [
                          Text(
                            "Task Title : ",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 15),
                        // ****** Task Title TextField ******
                        child: TextField(
                          controller: titleController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[200],
                              labelText: "Task Name",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    style: BorderStyle.solid,
                                    width: 3,
                                    color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    style: BorderStyle.solid,
                                    width: 3,
                                    color: Colors.purple),
                              )),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // ****** Kategori ******
                          const Text(
                            "Category :",
                            style: TextStyle(fontSize: 16),
                          ),
                          GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  duration: Duration(milliseconds: 300),
                                  content: Text("Kategori Seçili"),
                                ),
                              );
                              setState(() {
                                taskType = TaskType.note;
                              });
                            },
                            child:
                                Image.asset("lib/assets/images/Category_1.png"),
                          ),
                          GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  duration: Duration(milliseconds: 300),
                                  content: Text("Kategori Seçili"),
                                ),
                              );
                              setState(() {
                                taskType = TaskType.calendar;
                              });
                            },
                            child:
                                Image.asset("lib/assets/images/Category_2.png"),
                          ),
                          GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  duration: Duration(milliseconds: 300),
                                  content: Text("Kategori Seçili"),
                                ),
                              );
                              taskType = TaskType.contest;
                            },
                            child:
                                Image.asset("lib/assets/images/Category_3.png"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      // ****** Date/Name ******
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text("Date : "),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: TextField(
                                    controller: dateController,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text("Time : "),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: TextField(
                                    controller: timeController,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 25, bottom: 5),
                        child: Text(
                          "Describtion : ",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 300,
                        child: TextField(
                          controller: descriptionController,
                          textAlign: TextAlign.start,
                          expands: true,
                          maxLines: null,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[200],
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    style: BorderStyle.solid,
                                    width: 3,
                                    color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    style: BorderStyle.solid,
                                    width: 3,
                                    color: Colors.purple),
                              )),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Task newtask = Task(
                              type: taskType,
                              title: titleController.text,
                              description: descriptionController.text,
                              isCompleted: false);
                          widget.addNewTask(newtask);
                          Navigator.of(context).pop();
                        },
                        child: Text("SAVE"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
