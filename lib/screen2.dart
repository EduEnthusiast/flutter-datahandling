import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_14/main.dart';
// ignore: unused_import
import 'package:flutter_application_14/screen1.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_rounded),
                      ),
                    ),
                  ),
                ),
                Text(
                  'T-Shirts Shopping',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(child: Icon(Icons.menu_open_rounded)),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 40,
            width: 400,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                'Congratulations My Online Shop',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          SizedBox(height: 20),
          Image.asset(
            'assets/discount.jpeg',
            height: 400,
            width: 400,
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(child: Icon(Icons.add_box_rounded)),
              SizedBox(width: 40),
              CircleAvatar(child: Icon(Icons.check_box_rounded)),
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.pink,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Buy more online',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
