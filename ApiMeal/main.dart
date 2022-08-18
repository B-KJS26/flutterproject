// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:http/http.dart';
// ignore: unused_import
import 'package:meal/post.dart';
// ignore: unused_import
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'dart:ui';
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


  // ignore: unnecessary_new
  var now = new DateTime.now();
class _MyHomePageState extends State<MyHomePage> {
  @override
  // ignore: override_on_non_overriding_member
  final standardDeviceWidth = 360;
  String Month = DateFormat('M').format(now);
  String Day = DateFormat('d').format(now);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        children: [
          //FLEXIBLE을 이용하여 화면이 어떻게 달라져도 자동
          Flexible(
                child: Row(
                  children: [
                    // ignore: sized_box_for_whitespace
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 45, 0, 0),
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Image.asset('assets/images/spoonandfork.png'),
                      decoration: BoxDecoration(
                        color: const Color(0xffF9F9F9),//테두리
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: const Color(0xffF9F9F9), width: 7),
                        boxShadow: [
                          // ignore: prefer_const_constructors
                          BoxShadow(
                            color: Colors.grey.shade500,
                            offset: const Offset(0, 5.0),
                            blurRadius: 5.0,
                            spreadRadius: 0.3,
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-1.0, -1.0),
                            blurRadius: 10.0,
                            spreadRadius: 1.0,
                          ),
                        ]
                    ),),

                    Container(
                    margin: const EdgeInsets.fromLTRB(20, 55, 0, 0),
                    child: Text(
                      '급식 \n' 
                      '$Month월 '
                      '$Day일',
                    style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    ),),),
              ],),),
              const SizedBox(
                height: 20,
              ),
          Container(
            width:  0.92 * MediaQuery.of(context).size.width,
            height: 0.71 * MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/Cal.png'),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                            offset: const Offset(0, 20.0),
                            blurRadius: 30.0,
                            spreadRadius: 0,
                    ),
                  ],
            ),   
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tlqkf',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Nomonm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Nomonm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Nomonm',
          ),
        ],
      ),
    );
  }
}
