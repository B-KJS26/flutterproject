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
  int morning = 0;
  int lunch = 0;
  int dinner = 0;
  var morning_2 = 'assets/images/sun.png';
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
          // ignore: sized_box_for_whitespace
          
          Container(
            width: 70* (MediaQuery.of(context).size.width/360),
            height: 350 * (MediaQuery.of(context).size.height/360),
            child:Column(
              children:[
                IconButton(
                  icon: Image.asset(morning_2),
                  iconSize: 40,
                  onPressed: () {
                    morning++;
                  if(morning%2 == 0){
                    morning_2 = 'assets/images/noon.png';
                  }
                  // ignore: curly_braces_in_flow_control_structures
                  else morning_2 = 'assets/images/sun.png';
                    // ignore: avoid_print
                    print('아침');
                  },
                ),

                IconButton(
                  icon: Image.asset('assets/images/noon.png'),
                  iconSize: 40,
                  onPressed: () {
                    // ignore: avoid_print
                    print('점심');
                  },
                ),

                IconButton(
                  icon: Image.asset('assets/images/moon.png'),
                  iconSize: 40,
                  onPressed: () {
                    // ignore: avoid_print
                    print('저녁');
                  },
              ),
          ]),
          ),
        ],)
    );
  }
}
