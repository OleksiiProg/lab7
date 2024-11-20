import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab7',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BorderRadiusConfigurator(),
    );
  }
}

class BorderRadiusConfigurator extends StatefulWidget {
  const BorderRadiusConfigurator({super.key});

  @override
  _BorderRadiusConfiguratorState createState() =>
      _BorderRadiusConfiguratorState();
}

class _BorderRadiusConfiguratorState
    extends State<BorderRadiusConfigurator> {
  double topLeft = 0.0;
  double topRight = 0.0;
  double bottomLeft = 0.0;
  double bottomRight = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Лабораторна робота 7')),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(topLeft),
                  topRight: Radius.circular(topRight),
                  bottomLeft: Radius.circular(bottomLeft),
                  bottomRight: Radius.circular(bottomRight),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text("TL: ${topLeft}"),
                      Slider(
                        value: topLeft,
                        min: 0,
                        max: 100,
                        divisions: 100,
                        onChanged: (value) {
                          setState(() {
                            topLeft = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text("TR: ${topRight}"),
                      Slider(
                        value: topRight,
                        min: 0,
                        max: 100,
                        divisions: 100,
                        onChanged: (value) {
                          setState(() {
                            topRight = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text("BL: ${bottomLeft}"),
                      Slider(
                        value: bottomLeft,
                        min: 0,
                        max: 100,
                        divisions: 100,
                        onChanged: (value) {
                          setState(() {
                            bottomLeft = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text("BR: ${bottomRight}"),
                      Slider(
                        value: bottomRight,
                        min: 0,
                        max: 100,
                        divisions: 100,
                        onChanged: (value) {
                          setState(() {
                            bottomRight = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }
}
