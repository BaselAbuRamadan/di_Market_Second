

import 'package:di_market_second/core/base_widget/base_click.dart';
import 'package:di_market_second/core/constent.dart';
import 'package:di_market_second/ui/login/login.dart';
import 'package:http/http.dart' as http;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: const Size(360, 690),
        context: context,
        minTextAdapt: true,
        orientation: Orientation.portrait);
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF8F9FD),
        body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                Container(
                  padding: EdgeInsets.only(left: size.width/15,top: 10),
                  height: size.height/15,
                  width: size.width/1,
                  color: Colors.white,
                  child: const Text(
                    "Profile",style:TextStyle(
                    fontSize: 25,fontWeight: FontWeight.w800,fontFamily:"Dancing Script"
                  ),
                  ),
                ),
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Container(
                   padding: EdgeInsets.all(10),
                     child: const Text(
                    'Please Login or Register',
                   style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child:  baseClick(
                    title: "Login",
                    FontWeight: FontWeight.bold,
                    colorTitle: Colors.white,
                    sizeTitle: 16,
                    radius: 6,
                    color: Color(0xFF6B8009),
                    height: size.height/15,
                    width: size.width/1.1,
                    onTap: (){
                      setState(() {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => login()));
                      });

                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 1),
                  child:  baseClick(
                    title: "Register",
                    FontWeight: FontWeight.bold,
                    colorTitle: Colors.white,
                    sizeTitle: 16,
                    radius: 6,
                    color: Color(0xFF6B8009),
                    height: size.height/15,
                    width: size.width/1.1,
                    onTap: (){

                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: size.width/15,top: 10),
                  height: size.height/15,
                  width: size.width/1,
                  child: const Text(
                    "Settings",style: TextStyle(  fontSize: 25,fontWeight: FontWeight.w800,fontFamily:"Dancing Script" ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
            height: size.height/4.3,
            width: size.width/1,
            child:
            Column(children: [
              InkWell(
                onTap: (){},
                child: Container(
                    padding: EdgeInsets.only(bottom: 15),

                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15),

                          child: Image.asset(

                            "assets/image/globe.png",scale: 1,
                          ),
                        ),
                        Container(
                          padding:const EdgeInsets.only(left: 10),
                            child: Text("Language",style: TextStyle(fontSize: 16,color: Colors.grey),)
                        ),
                        Spacer(),
                        Container(
                            padding: const EdgeInsets.only(left: 10,right: 5),
                            child: Text("English",style: TextStyle(fontSize: 16,color: greenColor),)
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10,right: 15),
                          child: Image.asset(
                            "assets/image/left-arrow.png",scale: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10,bottom: 10),
                color: Colors.black12,
                height: 1,
                width: size.width/1.15,
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.only(bottom: 15,top: 15),

                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15),

                        child: Image.asset(

                          "assets/image/info.png",scale: 1,
                        ),
                      ),
                      Container(
                          padding:const EdgeInsets.only(left: 10),
                          child: Text("How It Works",style: TextStyle(fontSize: 16,color: Colors.grey),)
                      ),
                      Spacer(),
                      Container(
                          padding: const EdgeInsets.only(left: 10,right: 5),
                          child: Text("English",style: TextStyle(fontSize: 16,color: greenColor),)
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10,right: 15),
                        child: Image.asset(
                          "assets/image/left-arrow.png",scale: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10,bottom: 10),
                color: Colors.black12,
                height: 1,
                width: size.width/1.15,
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.only(bottom: 5,top: 15),

                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15),

                        child: Image.asset(

                          "assets/image/info.png",scale: 1,
                        ),
                      ),
                      Container(
                          padding:const EdgeInsets.only(left: 10),
                          child: Text("Privacy",style: TextStyle(fontSize: 16,color: Colors.grey),)
                      ),
                      Spacer(),
                      Container(
                          padding: const EdgeInsets.only(left: 10,right: 5),
                          child: Text("English",style: TextStyle(fontSize: 16,color: greenColor),)
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10,right: 15),
                        child: Image.asset(
                          "assets/image/left-arrow.png",scale: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              ],)
            )
          ],
        ),
      ),
      ),
    );
  }
}
