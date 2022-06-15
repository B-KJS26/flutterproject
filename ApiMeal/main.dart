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
      body: Column(
        children: [
          //FLEXIBLE을 이용하여 화면이 어떻게 달라져도 자동 조절
          Flexible(
                child: Row(
                  children: [
                    // ignore: sized_box_for_whitespace
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                      width: 70,
                      height: 70,
                      child: Image.asset('assets/images/spoonandfork.png'),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,//테두리
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                          ),
                        ]
                    ),),

                    Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: const Text(
                    '급식',
                    style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
              ),
            ),
          ),
                  ],
                ),
              ),
          
          //시간표가 들어갈 컨테이너
          Flexible(
            child: Container(
                margin: const EdgeInsets.all(20),
                width: 230,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
            ),
          ),
          ),
        ],
      ),
    );
  }
}
