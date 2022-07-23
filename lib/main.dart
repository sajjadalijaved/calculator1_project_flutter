
import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 430,
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
              color: Colors.grey.shade400,
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(3, 3),
                    blurRadius: 2,
                    spreadRadius: 2),
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(-3, -3),
                    blurRadius: 2,
                    spreadRadius: 2)
              ],
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 400,
                height: 250,
                alignment: Alignment.centerRight,
                child: const Text(
                  '45209',
                  style: TextStyle(color: Colors.white, fontSize: 60),
                ),
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(3, 3),
                          blurRadius: 2,
                          spreadRadius: 2),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(-3, -3),
                          blurRadius: 2,
                          spreadRadius: 2)
                    ],
                    color: Color(0xff243441),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(buttonText: 'Ac', size: 30, color: Colors.black),
                  MyButton(buttonText: 'Del', size: 25, color: Colors.black),
                  MyButton(buttonText: '%', size: 30, color: Colors.black),
                  MyButton(buttonText: '/', size: 30, color: Colors.deepOrange),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(buttonText: '7', size: 30, color: Colors.black),
                  MyButton(buttonText: '8', size: 30, color: Colors.black),
                  MyButton(buttonText: '9', size: 30, color: Colors.black),
                  MyButton(buttonText: 'x', size: 30, color: Colors.deepOrange),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(buttonText: '4', size: 30, color: Colors.black),
                  MyButton(buttonText: '5', size: 30, color: Colors.black),
                  MyButton(buttonText: '6', size: 30, color: Colors.black),
                  MyButton(buttonText: '+', size: 30, color: Colors.deepOrange),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(buttonText: '1', size: 30, color: Colors.black),
                  MyButton(buttonText: '2', size: 30, color: Colors.black),
                  MyButton(buttonText: '3', size: 30, color: Colors.black),
                  MyButton(buttonText: '-', size: 55, color: Colors.deepOrange),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(
                    buttonText: '0',
                    size: 30,
                    color: Colors.black,
                  ),
                  MyButton(
                    buttonText: '.',
                    size: 50,
                    color: Colors.black,
                  ),
                  MyButton1(
                      buttonText: '=',
                      size: 30,
                      width: 160,
                      color: Colors.deepOrange)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget MyButton1(
      {String? buttonText, Color? color, double? size, double? width}) {
    return Container(
      width: width,
      height: 60,
      child: Center(
          child: Text(
        buttonText.toString(),
        style: TextStyle(color: color, fontSize: size),
      )),
      decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(5, 5),
              blurRadius: 2,
              spreadRadius: -1,
            ),
          ],
          color: Colors.white70,
          borderRadius: BorderRadius.all(Radius.circular(30))),
    );
  }

  Widget MyButton({
    String? buttonText,
    Color? color,
    double? size,
  }) {
    return Container(
      width: 70,
      height: 60,
      child: Center(
          child: Text(
        buttonText.toString(),
        textAlign: TextAlign.center,
        style: TextStyle(color: color, fontSize: size),
      )),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(5, 5),
            blurRadius: 2,
            spreadRadius: -1,
          ),
        ],
        color: Colors.white70,
      ),
    );
  }
}

// class MyButton extends StatelessWidget {
//   const MyButton({required this.buttonText, Key? key}) : super(key: key);
//   final String buttonText;
//   @override
//   Widget build(BuildContext context) {
    // return Container(
    //   width: 70,
    //   height: 60,
    //   decoration: const BoxDecoration(
    //     shape: BoxShape.circle,
    //     boxShadow: [
    //       BoxShadow(
    //         color: Colors.black38,
    //         offset: Offset(5, 5),
    //         blurRadius: 2,
    //         spreadRadius: -1,
    //       ),
    //     ],
    //     color: Colors.white70,
    //   ),
    // );
//   }
// }
