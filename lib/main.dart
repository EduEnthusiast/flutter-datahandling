import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_14/screen1.dart';
// ignore: unused_import
import 'package:flutter_application_14/screen2.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<String> images = [
    'assets/image_1.png',
    'assets/image_2.png',
    'assets/image_3.png',
    'assets/image_4.png',
    'assets/image_5.png',
    'assets/image_6.png'
  ];

  List<String> prices = [
    '\$290',
    '\$300',
    '\$325',
    '\$390',
    '\$400',
    '\$450'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(images: images, prices: prices, image: null,),
    );
  }
}

class Screen1 extends StatefulWidget {
  final List<String> images;
  final List<String> prices;

  const Screen1({super.key, required this.images, required this.prices, required image});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Icon(Icons.arrow_back_rounded),
                    ),
                  ),
                ),
                Text('T-Shirts Shopping'),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(child: Icon(Icons.menu_open_rounded)),
                ),
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.2,
                ),
                itemCount: widget.prices.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Task1(
                            image: widget.images[index],
                            price: widget.prices[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: 235,
                            width: 200,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5, top: 5),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 1,
                                            spreadRadius: 1.5,
                                          ),
                                        ],
                                      ),
                                      child: Icon(
                                        Icons.favorite_rounded,
                                        color: Colors.pink,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Image.asset(
                                  widget.images[index],
                                  height: 130,
                                  width: 130,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Body-Fit-Shirts',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  widget.prices[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Buy Now',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Task1 extends StatelessWidget {
  final String image;
  final String price;

  const Task1({super.key, required this.image, required this.price});

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
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Screen1(
                                      images: [],
                                      prices: [], image: null,
                                    )),
                          );
                        },
                        child: Icon(Icons.arrow_back_rounded),
                      ),
                    ),
                  ),
                ),
                Text('T-Shirts Shopping'),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(child: Icon(Icons.menu_open_rounded)),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(image, height: 100, width: 100),
          ),
          SizedBox(height: 30),
          Container(
            height: 30,
            width: 120,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Sizes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'T-Shirt Top',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Task2()),
                    );
                  },
                  child: Text('32'),
                ),
              ),
              SizedBox(width: 20),
              CircleAvatar(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Task2()),
                    );
                  },
                  child: Text('33'),
                ),
              ),
              SizedBox(width: 20),
              CircleAvatar(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Task2()),
                    );
                  },
                  child: Text('34'),
                ),
              ),
              SizedBox(width: 20),
              CircleAvatar(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Task2()),
                    );
                  },
                  child: Text('35'),
                ),
              ),
              SizedBox(width: 20),
              CircleAvatar(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Task2()),
                    );
                  },
                  child: Text('36'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
