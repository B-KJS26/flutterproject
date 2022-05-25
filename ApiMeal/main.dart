import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'sikdan',
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
      // ignore: avoid_unnecessary_containers
      body: Column(
        children: [
          //메뉴바
            Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.menu), 
                  iconSize: 30,
                  onPressed: () { 
                   // ignore: avoid_print
                      print("누름");
                },
                    color: Colors.white,
                ),
              ],
            ),

          //아침, 점심, 저녁
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  icon: Image.asset('assets/images/sun.png'),
                  iconSize: 40,
                  onPressed: () {},
              ),

              IconButton(
                  icon: Image.asset('assets/images/noon.png'),
                  iconSize: 40,
                  onPressed: () {},
              ),

              IconButton(
                  icon: Image.asset('assets/images/moon.png'),
                  iconSize: 40,
                  onPressed: () {},
              )
            ]),
          ]),
    );
  }
}
