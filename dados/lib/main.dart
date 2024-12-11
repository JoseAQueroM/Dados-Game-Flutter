import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 35, 47, 160),
          title: const Text(
            'Dados Game',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: const DadosPage(),
        backgroundColor: const Color.fromARGB(255, 56, 40, 117),
      ),
    );
  }
}

class DadosPage extends StatefulWidget {
  const DadosPage({super.key});

  @override
  State<DadosPage> createState() => _DadosPageState();
}

class _DadosPageState extends State<DadosPage> {
  int leftDadoNumber = 5;
  int rightDadoNumber = 3;

  void numeroAleatorio() {
    setState(() {
      leftDadoNumber = Random().nextInt(6) + 1;
      rightDadoNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
                onTap: () {
                  numeroAleatorio();
                },
                child: Image.asset('images/dice$leftDadoNumber.png')),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
                onTap: () {
                  numeroAleatorio();
                },
                child: Image.asset('images/dice$rightDadoNumber.png')),
          )),
        ],
      ),
    );
  }
}
