import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'API식단표',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9EC3FF),
      body: Row(
        children: [
          //FLEXIBLE을 이용하여 화면이 어떻게 달라져도 자동 조절
          Flexible(
            fit: FlexFit.tight,
              child: Container(
                height: 200,
                width: 265,
                color: Colors.white,
                child: Row(

                ),
              ),
          ),
        ],
      ),
    );
  }
}
