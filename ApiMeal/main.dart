import 'package:flutter/material.dart';
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
          // ignore: sized_box_for_whitespace
          Container(
            width: 30 * (MediaQuery.of(context).size.width/360),
            child: Column(
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
            ]),
          ),
          
          SizedBox(
            width: 260 * (MediaQuery.of(context).size.width/360),
          ),
          Container(
            width: 70* (MediaQuery.of(context).size.width/360),
            height: 350 * (MediaQuery.of(context).size.height/360),
            child:Column(
              children:[
                IconButton(
                  icon: Image.asset('assets/images/sun.png'),
                  iconSize: 40,
                  onPressed: () {
                    print('아침');
                  },
                ),

                IconButton(
                  icon: Image.asset('assets/images/noon.png'),
                  iconSize: 40,
                  onPressed: () {
                    print('점심');
                  },
                ),

                IconButton(
                  icon: Image.asset('assets/images/moon.png'),
                  iconSize: 40,
                  onPressed: () {
                    print('저녁');
                  },
              ),
          ]),
          ),
        ],)
    );
  }
}
