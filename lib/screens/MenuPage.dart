import 'package:flutter/material.dart';

import 'package:restaurant_app/screens/HomePage.dart';

import '../Widgets/ItemsWidget.dart';
import '../Widgets/ItemsWidget1.dart';
import '../Widgets/ItemsWidget2.dart';
import '../Widgets/ItemsWidget3.dart';
import '../Widgets/ItemsWidget4.dart';
import '../Widgets/ItemsWidget5.dart';


class MenuPage extends StatelessWidget{
  

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: 
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => HomePage(),
                              )
                            );
                          },
                          icon: Icon(Icons.arrow_back_ios, 
                          size: 22,
                          color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Our Menu",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                TabBar(
                  isScrollable: true, labelColor: Color.fromARGB(255, 2, 66, 4),
                  indicator: BoxDecoration(),
                  labelStyle: TextStyle(fontSize: 20),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    Tab(text: "Masa"),
                    Tab(text: "Soup"),
                    Tab(text: "Rice"),
                    Tab(text: "Meat"),
                    Tab(text: "Drink"),
                    Tab(text: "Vegetable"),
                  ],
                ),
                Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      ItemsWidget(),
                      ItemsWidget1(),
                      ItemsWidget2(),
                      ItemsWidget3(),
                      ItemsWidget4(),
                      ItemsWidget5(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ),
      ),  
    );
  }
}