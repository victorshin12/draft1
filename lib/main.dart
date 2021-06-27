// @dart=2.9
import 'package:flutter/material.dart';
import 'includingfiles/About.dart';
import 'includingfiles/Dates.dart';
import 'includingfiles/constant/constants.dart';
import 'includingfiles/categories.dart';
import 'includingfiles/homepage/homepages.dart';
import 'includingfiles/liveSports.dart';
import 'includingfiles/lunch.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: kGrey1,
                    unselectedLabelStyle: kNonActiveTabStyle,
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    indicatorColor: Colors.white,
                    labelStyle: kActiveTabStyle.copyWith(fontSize: 25.0),
                    tabs: [
                      Tab(text: "All"),
                      Tab(text: "Category"),
                      Tab(text: "Lunch"),
                      Tab(text: "Athletics"),
                      Tab(text: "Dates"),
                      Tab(text: "About"),
                    ],
                  ),
                ),
              ],
            ),
          )
        ),
        body: TabBarView(
          children: [
            AllTabView(),
            Cate(),
            Lunch(),
            Sports(),
            Dates(),
            About(),
          ],
        ),
      ),
    );
  }
}
