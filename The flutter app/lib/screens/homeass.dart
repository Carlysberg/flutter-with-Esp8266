import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:jay_c/shared/menu_drawer.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool on1 = false;
  bool on2 = false;
  bool on3 = false;
  bool on4 = false;
  final dbR = FirebaseDatabase.instance.reference();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            title: const Text('JayC Tech'),
            centerTitle: true,
          ),
          drawer: const MenuDrawer(),
          body: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      height: 40,
                      width: 250,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Home Assistant',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      height: 170,
                      width: 150,
                      margin: const EdgeInsetsDirectional.all(10),
                      child: TextButton(
                        onPressed: () {
                          dbR.child('Light').set({'Switch': !on1});
                          setState(() {
                            on1 = !on1;
                          });
                        },
                        child: Column(
                          children: [
                            const Text(
                              'Light',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            on1
                                ? const Icon(Icons.lightbulb,
                                    size: 100, color: Colors.blue)
                                : const Icon(Icons.lightbulb_outline_sharp,
                                    size: 100, color: Colors.blue),
                            on1
                                ? const Text(
                                    'On',
                                    style: TextStyle(color: Colors.white),
                                  )
                                : const Text(
                                    'Off',
                                    style: TextStyle(color: Colors.white),
                                  )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      height: 170,
                      width: 150,
                      margin: const EdgeInsetsDirectional.all(10),
                      child: TextButton(
                        onPressed: () {
                          dbR.child('Fan').set({'Switch': !on2});
                          setState(() {
                            on2 = !on2;
                          });
                        },
                        child: Column(
                          children: [
                            const Text(
                              'Fan',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Image.asset('images/fan.png'),
                            on2
                                ? const Text(
                                    'On',
                                    style: TextStyle(color: Colors.white),
                                  )
                                : const Text(
                                    'Off',
                                    style: TextStyle(color: Colors.white),
                                  )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      height: 170,
                      width: 150,
                      margin: const EdgeInsetsDirectional.all(10),
                      child: TextButton(
                        onPressed: () {
                          dbR.child('Fridge').set({'Switch': !on3});
                          setState(() {
                            on3 = !on3;
                          });
                        },
                        child: Column(
                          children: [
                            const Text(
                              'Fridge',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Image.asset('images/fridge.png'),
                            on3
                                ? const Text(
                                    'On',
                                    style: TextStyle(color: Colors.white),
                                  )
                                : const Text(
                                    'Off',
                                    style: TextStyle(color: Colors.white),
                                  )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      height: 170,
                      width: 150,
                      margin: const EdgeInsetsDirectional.all(10),
                      child: TextButton(
                        onPressed: () {
                          dbR.child('TV').set({'Switch': !on4});
                          setState(() {
                            on4 = !on4;
                          });
                        },
                        child: Column(
                          children: [
                            const Text(
                              'TV',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            on4
                                ? const Icon(Icons.tv_outlined,
                                    size: 100, color: Colors.blue)
                                : const Icon(Icons.tv_off_outlined,
                                    size: 100, color: Colors.blue),
                            on4
                                ? const Text(
                                    'On',
                                    style: TextStyle(color: Colors.white),
                                  )
                                : const Text(
                                    'Off',
                                    style: TextStyle(color: Colors.white),
                                  )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
