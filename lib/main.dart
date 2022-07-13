import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Teaching',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Let Learn the Numbers!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => ClippingApp();
}

class ClippingApp extends State<MyHomePage> {
  List imgList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  var selectednum = 2;
  var txt = '';
  var score = 0;

  void _random() {
    setState(() {
      imgList.shuffle();
      var pos1 = imgList[1];
      var pos2 = imgList[2];
      var pos3 = imgList[3];
      var pos4 = imgList[4];
      List selectedList = [pos1, pos2, pos3, pos4];
      selectedList.shuffle();
      selectednum = selectedList[1];
      score += 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    var pos1 = imgList[1];
    var pos2 = imgList[2];
    var pos3 = imgList[3];
    var pos4 = imgList[4];

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipPath(
              clipper: CurvedBottomClipper(),
              child: Container(
                color: Colors.grey,
                width: double.infinity,
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Select this number;",
                        style: TextStyle(
                          fontFamily: "EduSA",
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                        const SizedBox(
                      height: 10,
                    ),
                    Text("  $selectednum  ",
                    style: const TextStyle(
                          fontFamily: "EduSA",
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
              child: Builder(
                builder: (context) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(" Score : $score  ",
                      style: const TextStyle(
                        fontFamily: 'PT',
                        fontSize: 20,
                      ),)
                    ],
                  );
                }
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        elevation: 5.0,
                        shadowColor: const Color.fromARGB(255, 141, 139, 139),
                        child: InkWell(
                          onTap: () {
                            if (selectednum == pos1) {
                              _random();
                            } else {
                              var snackBar = SnackBar(
                                content: const Text(
                                  "Sake! That's the wrong number.",
                                  style: TextStyle(
                                      fontFamily: "EduSA",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 184, 53, 13)),
                                ),
                                action: SnackBarAction(
                                  label: 'Start again?',
                                  onPressed: () {
                                    _random();
                                    score = 0;
                                  },
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          },
                          child: Image(
                            image: AssetImage("images/img$pos1.png"),
                            height: 120,
                            width: 120,
                          ),
                        ),
                      ),
                      Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        elevation: 5.0,
                        shadowColor: const Color.fromARGB(255, 93, 91, 91),
                        child: InkWell(
                          onTap: () {
                            if (selectednum == pos2) {
                              _random();
                            } else {
                              var snackBar = SnackBar(
                                content: const Text(
                                  "Sake! That's the wrong number.",
                                  style: TextStyle(
                                      fontFamily: "EduSA",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 184, 53, 13)),
                                ),
                                action: SnackBarAction(
                                  label: 'Start again?',
                                  onPressed: () {
                                    _random();
                                    score = 0;
                                  },
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          },
                          child: Image(
                            image: AssetImage("images/img$pos2.png"),
                            height: 120,
                            width: 120,
                          ),
                        ),
                      ),
                    ]),
                const SizedBox(
                  height: 50,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        elevation: 5.0,
                        shadowColor: Colors.grey,
                        child: InkWell(
                          onTap: () {
                            if (selectednum == pos3) {
                              _random();
                            } else {
                              var snackBar = SnackBar(
                                content: const Text(
                                  "Sake! That's the wrong number.",
                                  style: TextStyle(
                                      fontFamily: "EduSA",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 184, 53, 13)),
                                ),
                                action: SnackBarAction(
                                  label: 'Start again?',
                                  onPressed: () {
                                    _random();
                                    score = 0;
                                  },
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          },
                          child: Image(
                            image: AssetImage("images/img$pos3.png"),
                            height: 120,
                            width: 120,
                          ),
                        ),
                      ),
                      Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        elevation: 5.0,
                        shadowColor: Colors.grey,
                        child: InkWell(
                          onTap: () {
                            if (selectednum == pos4) {
                              _random();
                            } else {
                              var snackBar = SnackBar(
                                content: const Text(
                                  "Sake! That's the wrong number.",
                                  style: TextStyle(
                                      fontFamily: "EduSA",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 184, 53, 13)),
                                ),
                                action: SnackBarAction(
                                  label: 'Start again?',
                                  onPressed: () {
                                    _random();
                                    score = 0;
                                  },
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          },
                          child: Image(
                            image: AssetImage("images/img$pos4.png"),
                            height: 120,
                            width: 120,
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 10,
                    )
              ],
            ),
          ],
        ));
  }
}

class CurvedBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final roundingHeight = size.height * 3 / 5;

    // this is top part of path, rectangle without any rounding
    final filledRectangle =
        Rect.fromLTRB(0, 0, size.width, size.height - roundingHeight);

    // this is rectangle that will be used to draw arc
    // arc is drawn from center of this rectangle, so it's height has to be twice roundingHeight
    // also I made it to go 5 units out of screen on left and right, so curve will have some incline there
    final roundingRectangle = Rect.fromLTRB(
        -5, size.height - roundingHeight * 2, size.width + 5, size.height);

    final path = Path();
    path.addRect(filledRectangle);

    // so as I wrote before: arc is drawn from center of roundingRectangle
    // 2nd and 3rd arguments are angles from center to arc start and end points
    // 4th argument is set to true to move path to rectangle center, so we don't have to move it manually
    path.arcTo(roundingRectangle, pi, -pi, true);
    path.close();

    return path;
  }

@override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // returning fixed 'true' value here for simplicity, it's not the part of actual question, please read docs if you want to dig into it
    // basically that means that clipping will be redrawn on any changes
    return true;
  }
}
