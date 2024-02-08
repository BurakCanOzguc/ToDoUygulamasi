import 'package:flutter/material.dart';
import 'package:todouygulamasi/constants/tasktype.dart';
import 'package:todouygulamasi/main.dart';
import 'package:todouygulamasi/model/task.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({super.key, required this.task});
  final Task task;

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.task.isCompleted ? Colors.grey : Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //if(a==5) {...} --> a==5 ? doğru : yanlış --> ternary operation
            widget.task.type == TaskType.note
                ? Image.asset("lib/assets/images/Category_1.png")
                : widget.task.type == TaskType.calendar
                    ? Image.asset("lib/assets/images/Category_2.png")
                    : Image.asset("lib/assets/images/Category_3.png"),

            Expanded(
              child: Column(
                children: [
                  Text(
                    widget.task.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        decoration: widget.task.isCompleted
                            ? TextDecoration.lineThrough
                            : TextDecoration.none),
                  ),
                  Text(
                    widget.task.description,
                    style: TextStyle(
                      decoration: widget.task.isCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
            Checkbox(
              value: isChecked,
              onChanged: (val) => {
                setState(
                  () {
                    widget.task.isCompleted = !widget.task.isCompleted;
                    isChecked = val!;
                  },
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}

//********************HEADER********************* */

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      height: deviceHeight / 3,
      width: deviceWidth,
      decoration: const BoxDecoration(
        color: Colors.purple,
        image: DecorationImage(
          image: AssetImage("lib/assets/images/header.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "October 20, 2022",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              "My Todo List",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
