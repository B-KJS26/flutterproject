import 'package:flutter/material.dart';

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
    return Container(

    );
  }
}