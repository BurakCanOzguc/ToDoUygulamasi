import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todouygulamasi/constants/color.dart';
import 'package:todouygulamasi/main.dart';
import 'package:todouygulamasi/screens/add_new_task.dart';
import 'package:todouygulamasi/todoitem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> todo = ["Ders Çalış", "5 km Koş", "Biraz Oyun Oyna"];
  List<String> todoCompleted = ["Oyun Buluşması", "Çöpleri Dök"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor(backgroundColor),
        body: Column(
          children: [
            // Header
            const Header(),

            // Eğer burada expanded Widget'ını Flexible ile sarmalıyıp flex:3 verseydim üstteki alan daha fazla alan kaplardı.
            //Üstteki Column
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: SingleChildScrollView(
                  child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: todo.length,
                    itemBuilder: (context, index) {
                      return TodoItem(
                        title: todo[index],
                      );
                    },
                  ),
                ),
              ),
            ),
            // Text Kısmı
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Completed",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //Alt Column
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: SingleChildScrollView(
                  child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: todoCompleted.length,
                    itemBuilder: (context, index) {
                      return TodoItem(title: todoCompleted[index]);
                    },
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AddNewTask(),
                ));
              },
              child: Text("Add New Task"),
            ),
          ],
        ),
      ),
    );
  }
}
