import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Flutter Demo ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHome(),
    ); // MaterialApp
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
      ),
      body: Column(
        children: [
          _builddisplay(),
          Center(child: _buildkeybord()),
        ],
      ),
    );
  }

  Widget _builddisplay() {
    return Container(
      width: 340,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(9),
      ),
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.only(right: 35, left: 156),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            '55+26',
            style: TextStyle(
              fontSize: 48,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildkeybord() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Padding(
          padding: EdgeInsets.all(40),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildButton('7'),
            _buildButton('8'),
            _buildButton('9'),
            _buildButton('/'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildButton('4'),
            _buildButton('5'),
            _buildButton('6'),
            _buildButton('*'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildButton('1'),
            _buildButton('2'),
            _buildButton('3'),
            _buildButton('-'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildButton('C'),
            _buildButton('0'),
            _buildButton('='),
            _buildButton('+'),
          ],
        ),
      ],
    );
  }

  Container _buildButton(
    String name,
  ) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 81,
      height: 80,
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          name,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
