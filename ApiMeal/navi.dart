import 'package:flutter/material.dart';
class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Navi'),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("home"),
              ),
              Center(
                child: Text("music"),
              ),
              Center(
                child: Text("apps"),
              ),
              Center(
                child: Text("settings"),
              ),
            ],
          ),
          extendBodyBehindAppBar: true, // add this line

          bottomNavigationBar: Container(
            color: Colors.white, //색상흰색으로
            child: Container(
              height: 70,
              padding: const EdgeInsets.only(bottom: 10, top: 5),
              child: const TabBar(
                 indicator size -> .label = label의 길이
                 indicator size -> .tab = tab의 길이
                indicatorSize: TabBarIndicatorSize.label,
                //tab 하단 indicator color
                indicatorColor: Colors.red,
                //tab 하단 indicator weight
                indicatorWeight: 2,
                //label color
                labelColor: Colors.red,
                //unselected label color
                unselectedLabelColor: Colors.black38,
                labelStyle: TextStyle(
                  fontSize: 13,
                ),
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.home_outlined,
                    ),
                    text: 'Home',
                  ),
                  Tab(
                    icon: Icon(Icons.music_note),
                    text: 'Music',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.apps,
                    ),
                    text: 'Apps',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.settings,
                    ),
                    text: 'Settings',
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
