import 'package:flutter/material.dart';
import 'dart:ui';
void main() => runApp(const Siganpyo());

class Siganpyo extends StatelessWidget {
  const Siganpyo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'API시간표',
      debugShowCheckedModeBanner: false,
      home: Siganapi(),
    );
  }
}

class Siganapi extends StatefulWidget {
  const Siganapi({Key? key}) : super(key: key);

  @override
  State<Siganapi> createState() => _SiganapiState();
}

class _SiganapiState extends State<Siganapi> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            //MediaQuery.of(context).size~~는 화면 비율에 맞춰서 크기 자동 조정 되도록 화면 비율에 비례하여 달라짐
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.2,
            color: const Color(0xff9EC3FF),
          ),
          Container(

          ),
        ]
      );
  }
}
