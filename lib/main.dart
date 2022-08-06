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
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  double _oWidth = 50;
  double _oHeight = 50;

  void sizeincrease() {
    setState(() {
      _oWidth += 30;
      _oHeight += 30;
    });
  }

   void sizedecrease() {
    setState(() {
      _oWidth -= 30;
      _oHeight -= 30;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Boa Hancock"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: AssetImage(
                'images/BoaHancock.jpg',
              ),
              height: _oWidth,
              width: _oHeight,
            ),
            
          ],
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
                  onTap: sizedecrease,
                  child: Icon(
                    Icons.exposure_minus_1,
                  ),
                ),
                InkWell(
                  onTap: sizeincrease,
                  child: Icon(
                    Icons.add,
                  ),
                )
        ],
      ),
    );
  }
}
