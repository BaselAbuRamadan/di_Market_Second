import 'dart:async';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:di_market_second/ui/Home_page/page/Home_page.dart';
// import 'package:bloc_app/ui/profile2/profile2.dart';
import 'package:built_value/built_value.dart';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:di_market_second/core/constent.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../profile/profile.dart';
// import 'package:bloc_app/ui/Cart/Cart.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  final autoSizeGroup = AutoSizeGroup();
  var _bottomNavIndex = 0; //default index of first screen
  int? isSelected ;
   AnimationController? _animationController;
  Animation<double>? animation;
  CurvedAnimation? curve;

  final List<Widget>screens = [
    const Home(),
    // Winners(),
    // Wishlist(),
    // Cart(),
    const Profile()
  ];


  Widget currentScreen = const Home();
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),


      floatingActionButton:  FloatingActionButton(
        child: Column(
          children: [
            Image.asset('assets/image/home(2).png',
              height: 35,
              width: 25,
            ),
            const SizedBox(
              height: 0,
            ),
            const Text('Home',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10
                // color: currentTab==0?Colors.yellow:Colors.black
              ),
            )
          ],
        ),

        backgroundColor: greenColor,
        onPressed: (){
          setState(() {
            currentScreen = const Home();
            isSelected  = 4;
          });

        } ,
      ),
floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
            padding: const EdgeInsets.all(5),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: (){
                  // setState(() {
                  //   currentScreen=null;
                  //   isSelected  = 0 ;
                  // });
                },
                child: Column(
                  children: [
                    Image.asset((isSelected == 0)?
                      'assets/image/surface_green.png'
                        : 'assets/image/surface1.png',

                      height: 30,
                      width: 25,
                    ),
                    const SizedBox(
                      height: 0,
                    ),
                    Text('Winners',
                    style: TextStyle(
                      // color: Colors.black38,
                      fontSize: 10,
                       color: (isSelected == 0)?greenColor:Colors.black38
                    ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 50),
                child:MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    // setState(() {
                    //   currentScreen = Home();
                    //   isSelected  = 1 ;
                    // });
                  },
                  child: Column(
                    children: [
                      Image.asset((isSelected == 1)?
                      'assets/image/heart_green.png'
                          : 'assets/image/heart(1).png',

                        height: 30,
                        width: 25,
                      ),
                      const SizedBox(
                        height: 0,
                      ),
                      Text('Wishlist',
                        style: TextStyle(
                          // color: Colors.black38,
                            fontSize: 10,
                            color: (isSelected == 1)?greenColor:Colors.black38
                        ),
                      )
                    ],
                  ),
                ),

              ),
               Container(
            padding: const EdgeInsets.only(left: 10),
            child:MaterialButton(
              minWidth: 40,
              onPressed: (){
                // setState(() {
                //   currentScreen = Cart();
                //   isSelected  = 2;
                // });
              },

              child: Column(
                children: [
                  Image.asset((isSelected == 2)?
                  'assets/image/commerce_green.png'
                      : 'assets/image/commerce.png',

                    height: 30,
                    width: 25,
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  Text('Cart',
                    style: TextStyle(
                      // color: Colors.black38,
                        fontSize: 10,
                        color: (isSelected == 2)?greenColor:Colors.black38
                    ),
                  )
                ],
              ),
            ),

          ),
              MaterialButton(
                minWidth: 40,
                onPressed: (){
                  setState(() {
                    currentScreen = const Profile() ;
                    isSelected  = 3;
                  });
                },
                // Image.asset('assets/image/prof.png',

                  child: Column(
                    children: [
                      Image.asset((isSelected == 3)?
                      'assets/image/prof_green.png'
                          : 'assets/image/prof.png',

                        height: 30,
                        width: 25,
                      ),
                      const SizedBox(
                        height: 0,
                      ),
                      Text('Profile',
                        style: TextStyle(
                          // color: Colors.black38,
                            fontSize: 10,
                            color: (isSelected == 3)?greenColor:Colors.black38
                        ),
                      )
                    ],
                  ),
              ),

            ],
          ),
        ),
      ),





    );
  }


}






