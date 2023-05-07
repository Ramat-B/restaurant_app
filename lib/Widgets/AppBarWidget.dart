import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CategoriesWidget.dart';
import 'PopularDishesWidget.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    List<Color> Clrs = [
      Color.fromARGB(255, 246, 111, 58),
      Color.fromARGB(255, 36, 131, 233),
      Color.fromARGB(255, 63, 208, 143),
    ];

  var imageList = [
    "assets/chicken pepper soup.jpeg",
    "assets/intestine.jpeg",
    "assets/peppered meat.jpeg",
  ];

  var iconsImageList = [
    "assets/"
  ];

    return SingleChildScrollView(
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFD4ECF7),    
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                   ),
                   child: Icon(
                    Icons.bar_chart_sharp,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFD4ECF7),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        spreadRadius: 2,
                       ),
                    ],
                  ),
                  child: Icon(
                    Icons.notifications_outlined,
                    size: 28,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Dear",
                  style: TextStyle(
                   fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  SizedBox(height: 5,),
                  Text(
                    "Welcome to Eskon's Kitchen!.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
          
            //Search
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(children: [
                      Icon(
                        CupertinoIcons.search, 
                        color: Colors.red,
                        ),
                        Container(
                          height: 50,
                          width: 270,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "What would you like to have?",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                        ),
                        Icon(Icons.filter_list),
                    ]),
                  ),
              ),
            ),

            //Category
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            // Category Widget
            CategoriesWidget(),

            // Popular Dishes
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Popular Dishes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            // Popular Dishes Widget
            PopularDishesWidget(),            
        ],
      ),
    );
  }
}
