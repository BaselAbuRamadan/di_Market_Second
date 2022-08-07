
import 'package:di_market_second/core/base_widget/base_click.dart';
import 'package:di_market_second/core/base_widget/base_text.dart';
import 'package:di_market_second/core/constent.dart';
import 'package:di_market_second/core/style/base_color.dart';
import 'package:di_market_second/ui/Nav_Bar_main/Nav_Bar.dart';
import 'package:di_market_second/ui/language/language.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class Slider1 extends StatefulWidget {
  const Slider1({Key? key}) : super(key: key);

  @override
  _Slider1State createState() => _Slider1State();
}

class _Slider1State extends State<Slider1> {
  int _currentPageIndex = 0;
  // final _bloc = sl<SlidesBloc>();
  int i = 0;

  // @override
  // void initState() {
  //   _bloc.add(GetSlidesData());
  //   super.initState();
  // }
  var controller = PageController(initialPage: 0);
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      SingleChildScrollView(
          child:
          Center(
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 60,
                ),
                Container(
                    margin: const EdgeInsets.only(top: 50),
                    height: 240,
                    child: PageView(
                      controller: controller,
                      onPageChanged: (val) {
                        setState(() {
                          indexPage = val;
                        });
                      },
                      children: [
                        Image.asset(
                          "assets/image/slide1.png",
                          width: 299.8,
                          height: 222,
                        ),
                        Image.asset(
                          "assets/image/slide2.png",
                          width: 299.8,
                          height: 222,
                        ),
                        Image.asset(
                          "assets/image/slide3.png",
                          width: 299.8,
                          height: 222,
                        ),
                      ],
                    )),
                const SizedBox(height: 40),
                indexPage == 0
                    ? baseText(
                    textAlign :TextAlign.center,
                    title:
                    "Search for the best product for you",
                    color: Colors.black,
                    size: 35.0,
                    fontWeight: FontWeight.w200
                )
                    : indexPage == 1
                    ? baseText(
                    textAlign :TextAlign.center,

                    title: "Search for favorite product near you",
                    color: Colors.black,
                    size: 35.0,
                    fontWeight: FontWeight.w200
                )
                    : baseText(
                    textAlign :TextAlign.center,

                    title: "Easy transaction for reedem your deals",
                    color: Colors.black,
                    size: 35.0,
                    fontWeight: FontWeight.w200
                ),
                const SizedBox(height: 20),
                Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: indexPage == 0
                        ? baseText(
                        title:
                        'More savings for every transaction you buy and find various kinds of offers for you',
                        color: HexColor("#C2C2C2"),
                        size: 17.0,
                        textAlign: TextAlign.center)
                        : indexPage == 1
                        ? baseText(
                        title:
                        'Find a wide variety of product category offers around you',
                        color: HexColor("#C2C2C2"),
                        size: 17.0,
                        textAlign: TextAlign.center)
                        : baseText(
                        title:
                        'Reedem your coupons to get more discounts and rewards',
                        color: HexColor("#C2C2C2"),
                        size: 17.0,
                        textAlign: TextAlign.center)),
                const SizedBox(height: 50),
                Container(
                  child: DotsIndicator(
                    dotsCount: 3,
                    position: indexPage.toDouble(),
                    decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(40.0, 9.0),
                        color: Colors.transparent,
                        activeColor:greenColor,
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(
                              color:greenColor,
                            ))),
                  ),
                ),
                const SizedBox(height: 100),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: indexPage == 0 || indexPage == 1? Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            if (indexPage == 2) {
                              setState(() {
                                indexPage = 1;
                              });
                            } else if (indexPage == 1) {
                              setState(() {
                                indexPage = 0;
                              });
                            } else if (indexPage == 0) {
                              ///push to login page/////
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => const language()));
                            }
                          },
                          child: Text('Back',style: TextStyle(color: greenColor),),
                        ),

                        InkWell(
                          onTap: (){
                            if (indexPage == 0) {
                              setState(() {
                                indexPage = 1;
                              });
                            } else if (indexPage == 1) {
                              setState(() {
                                indexPage = 2;
                              });
                            } else {
                              /////push to login page/////
                              // Navigator.of(context).push(
                              //     MaterialPageRoute(builder: (context) => LoginPage()));
                            }
                          },
                          child: Text('Next',style: TextStyle(color: greenColor),),
                        ),

                      ],
                    ),
                  )
                      :Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: baseClick(
                          onTap: () {
                            ///push to login page/////
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => MyHomePage() ));
                          },
                          title: "Start",
                          color: greenColor,
                          colorTitle: Colors.white,
                          height: 50.0,
                          radius: 6.0,
                          sizeTitle: 14.0,
                          FontWeight: FontWeight.bold
                      ),
                    ),

                  ),

                ),
              ],
            ),
          )),
    );
  }

// void error(String errorCode) {
//   if (errorCode.isNotEmpty) {
//     Fluttertoast.showToast(
//         msg: errorCode,
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.grey,
//         textColor: greenColor,
//         fontSize: 16.0);
//     _bloc.add(ClearError());
//   }
// }
}
