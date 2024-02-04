import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todouygulamasi/constants/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Deneme(),
    );
  }
}

class Deneme extends StatefulWidget {
  const Deneme({super.key});

  @override
  State<Deneme> createState() => _DenemeState();
}

class _DenemeState extends State<Deneme> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor(backgroundColor),
        body: Column(
          children: [
            // Header
            Container(
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
            ),
            // Eğer burada expanded Widget'ını Flexible ile sarmalıyıp flex:3 verseydim üstteki alan daha fazla alan kaplardı.
            //Üstteki Column
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
                                size: 40,
                              ),
                              const Text(
                                "Study Lesons",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 21),
                              ),
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (val) => {
                                        setState(
                                          () {
                                            isChecked = val!;
                                          },
                                        )
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
                                size: 40,
                              ),
                              const Text(
                                "Study Lesons",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 21),
                              ),
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (val) => {
                                        setState(
                                          () {
                                            isChecked = val!;
                                          },
                                        )
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
                                size: 40,
                              ),
                              const Text(
                                "Study Lesons",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 21),
                              ),
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (val) => {
                                        setState(
                                          () {
                                            isChecked = val!;
                                          },
                                        )
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
                                size: 40,
                              ),
                              const Text(
                                "Study Lesons",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 21),
                              ),
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (val) => {
                                        setState(
                                          () {
                                            isChecked = val!;
                                          },
                                        )
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
                                size: 40,
                              ),
                              const Text(
                                "Study Lesons",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 21),
                              ),
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (val) => {
                                        setState(
                                          () {
                                            isChecked = val!;
                                          },
                                        )
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
                                size: 40,
                              ),
                              const Text(
                                "Study Lesons",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 21),
                              ),
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (val) => {
                                        setState(
                                          () {
                                            isChecked = val!;
                                          },
                                        )
                                      })
                            ],
                          ),
                        ),
                      ),
                    ],
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
                                size: 40,
                              ),
                              const Text(
                                "Study Lesons",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 21),
                              ),
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (val) => {
                                        setState(
                                          () {
                                            isChecked = val!;
                                          },
                                        )
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
                                size: 40,
                              ),
                              const Text(
                                "Study Lesons",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 21),
                              ),
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (val) => {
                                        setState(
                                          () {
                                            isChecked = val!;
                                          },
                                        )
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
                                size: 40,
                              ),
                              const Text(
                                "Study Lesons",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 21),
                              ),
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (val) => {
                                        setState(
                                          () {
                                            isChecked = val!;
                                          },
                                        )
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
                                size: 40,
                              ),
                              const Text(
                                "Study Lesons",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 21),
                              ),
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (val) => {
                                        setState(
                                          () {
                                            isChecked = val!;
                                          },
                                        )
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
                                size: 40,
                              ),
                              const Text(
                                "Study Lesons",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 21),
                              ),
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (val) => {
                                        setState(
                                          () {
                                            isChecked = val!;
                                          },
                                        )
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
                                size: 40,
                              ),
                              const Text(
                                "Study Lesons",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 21),
                              ),
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (val) => {
                                        setState(
                                          () {
                                            isChecked = val!;
                                          },
                                        )
                                      })
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.lightBlue)),
              onPressed: () {},
              child: Text("Add New Task"),
            ),
          ],
        ),
      ),
    );
  }
}
