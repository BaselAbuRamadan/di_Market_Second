import 'package:di_market_second/core/base_widget/base_click.dart';
import 'package:di_market_second/core/constent.dart';
import 'package:di_market_second/ui/Home_page/bloc/home_bloc.dart';
import 'package:di_market_second/ui/Home_page/bloc/home_event.dart';
import 'package:di_market_second/ui/Home_page/bloc/home_state.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';


import '../../../injectoin.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _HomeBloc = sl<HomeBloc>();
  // final _bloc = sl<HomeBloc>();
  int i = 0;
  // void reqGetHomeData() {
  //
  //   _HomeBloc.add(GetHomeData());
  //
  // }
  @override
  void initState() {
    // reqGetHomeData();
    _HomeBloc.add(GetHomeData());

    super.initState();
  }
  final _listControllerSlider = ScrollController();

  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }
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
    return  BlocBuilder(
        bloc: _HomeBloc,
        builder: (BuildContext context, HomeState state) {
          // error(state.error.toString());
          // if (state.isSucessAdding) {
          //   Navigator.push(
          //       context, MaterialPageRoute(builder: (context) => Cart()));
          // }


          return Scaffold(


            backgroundColor: const Color(0xFFF8F9FD),
            body: Stack(
              children: [
                (state.GetDataHome != null)
                // (state.isSucessGet == true)
                    ?
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 17),
                        padding: EdgeInsets.only(top: 10, right: 0),
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/image/DiMarket.png',
                              height: 100,
                              width: 200,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height / 4,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            PageView.builder(
                              scrollDirection: Axis.horizontal,
                              controller: _pageController,
                              onPageChanged: _onPageChanged,
                              itemCount:
                              state.GetDataHome!.inside_ads.length
                              // state.GetDataHome!.inside_ads.length
                              ,
                              itemBuilder: (ctx, i) =>
                                  InkWell(
                                    onTap: () {

                                    },
                                    child: Container(
                         //              child:   Image.asset(
                         // "assets/image/vid.png"
                         // //                  state.GetDataHome.campaigns_closing_soon[i].campaign_image,
                         // //      state.GetDataHome!.inside_ads[i].image!.toString(),
                         //      //           fit: BoxFit.cover,
                         //
                         //              ),
                                      decoration: BoxDecoration(
                                        color: Colors.black38,

                                        image: DecorationImage(

                                            image: NetworkImage(
                                              state.GetDataHome!.inside_ads[i].image.toString(),


                                            ),

                                            fit: BoxFit.cover, ),
                                      ),
                                    ),
                                  ),
                            ),
                            Container(
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Spacer(),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisSize:
                                          MainAxisSize.min,
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: <Widget>[
                                            for (int i = 0; i < 3; i++)
                                              if (i == _currentPage)
                                                SlideDots(true)
                                              else
                                                SlideDots(false)
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                  ],
                                )),
                            Container(
                              padding:
                              EdgeInsets.only(left: 10, top: 25.h),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        child: const Text(
                                          "rtrtr",
                                          // state.GetDataHome.message,

                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight:
                                              FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        child: const Text(
                                          'Basel Aburamadan',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight:
                                              FontWeight.w400),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),

                          ],

                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: Row(
                            children: const [
                              Text(
                                'Campaigns Closing Soon',
                                style: TextStyle(
                                  fontSize: 23,
                                ),
                              ),
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        height: 240,
                        child: ListView.builder(
                          itemCount:
                          state.GetDataHome!.campaigns_closing_soon.length

                          ,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          controller: _listControllerSlider,
                          itemBuilder: (ctx, index) {
                            return Container(
                              margin: EdgeInsets.only(right: 10),
                              width: 170,
                              height: 200,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        // "title"
                                        // state.GetDataHome.campaigns_closing_soon[index].campaign_title
                                        state.GetDataHome!.campaigns_closing_soon[index].campaign_title.toString()
                                        ,

                                        style: dataStyle.copyWith(
                                          fontSize: 16, color: Colors.black
                                      ),)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Text(
                                        state.GetDataHome!.campaigns_closing_soon[index].price.toString()
                                        , style: dataStyle.copyWith(
                                          fontSize: 12,
                                          color: Colors.blue),),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundImage: NetworkImage(
                                            state.GetDataHome!.campaigns_closing_soon[index].campaign_image.toString()
                                      )),


                                    ],
                                  ),
                                  Text(
                                    'Get your way to win',
                                    style: titleStyle.copyWith(
                                        fontSize: 12,
                                        color: Colors.black38),
                                  ),
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: NetworkImage(

                                        state.GetDataHome!.campaigns_closing_soon[index].prize_image.toString()

                                    ),
                                  ),
                                  Text(
                                    state.GetDataHome!.campaigns_closing_soon[index].prize_title.toString()

                                    ,
                                    style: titleStyle.copyWith(
                                        fontSize: 12,
                                        color: Colors.black38),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: [
                                        Spacer(),
                                        Text(
                                          state.GetDataHome!.campaigns_closing_soon[index].solid_count.toString(),

                                          style: dataStyle.copyWith(
                                              fontSize: 10,
                                              color: Colors.black38),
                                        ),
                                        const Spacer(),
                                        Text(

                                          state.GetDataHome!.campaigns_closing_soon[index].sell_perecent.toString(),

                                          style: dataStyle.copyWith(
                                              fontSize: 10,
                                              color: Colors.black38),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0.0, right: 0, top: 0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: FAProgressBar(
                                            displayTextStyle: const TextStyle(
                                                color:
                                                Colors.transparent),
                                            size: 8,
                                            backgroundColor:
                                            const Color(0xffEDF0F9),
                                            progressColor: greenColor,
                                          borderRadius: BorderRadius.circular(20),
                                            currentValue:
                                            state.GetDataHome!.campaigns_closing_soon[index].solid_count!,
                                            displayText: '%',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.only(left: 15, top: 0),
                          child: Row(
                            children: [
                              const Text(
                                'campaigns_available',
                                style: TextStyle(
                                  fontSize: 23,
                                ),
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: const Text(
                                    'Show More',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.blue),
                                  ),
                                ),
                              )
                            ],
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 0, bottom: 15),
                        // height: MediaQuery.of(context).size.height/1.8,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 1.05,

                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          controller: _listControllerSlider,
                          itemCount:
                          state.GetDataHome!.campaigns_available.length,
                          itemBuilder: (ctx, index) {
                            return Container(
                              margin: const EdgeInsets.only(
                                  right: 10, bottom: 10),
                              width: 150,
                              height: 400,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                // gradient: LinearGradient(
                                //     // colors: [Color(0xffF01537), Color(0xffFEAA2B)]
                                // )
                              ),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Get your way to win',
                                        style: dataStyle.copyWith(
                                            fontSize: 16,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '1 KG GOLD',
                                        style: dataStyle.copyWith(
                                            fontSize: 12,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(
                                            top: 40, left: 10),
                                        child: Image.network(

                                          state.GetDataHome!.campaigns_available[index].prize_image!,

                                          height: 130,
                                          width: 250,
                                        ),
                                      ),
                                      Container(
                                        padding:
                                        EdgeInsets.only(left: 130),
                                        child: Image.asset(
                                          'assets/image/price.png',
                                          height: 100,
                                          width: 120,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(),
                                    child: Text(
                                      'Buy '
                                          +state.GetDataHome!.campaigns_available[index].campaign_title.toString()
                                      ,
                                      style: titleStyle.copyWith(
                                          fontSize: 20,
                                          color: Colors.black38),
                                    ),
                                  ),
                                  Text(

                                    state.GetDataHome!.campaigns_available[index].price.toString()
                                    ,
                                    style: titleStyle.copyWith(
                                        fontSize: 16,
                                        color: Colors.blue),
                                  ),
                                  Container(
                                      padding: const EdgeInsets.only(
                                          left: 0, right: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 0, left: 0),
                                            child: baseClick(
                                                onTap: () {
                                                  ///push to login page/////
                                                  // Navigator.of(context).push(
                                                  //     MaterialPageRoute(builder: (context) => Product_Details()));
                                                },
                                                title: "Prize Details",
                                                width: MediaQuery
                                                    .of(
                                                    context)
                                                    .size
                                                    .width /
                                                    2.5,
                                                color: greenColor,
                                                colorTitle:
                                                Colors.white,
                                                height: 40.0,
                                                radius: 6.0,
                                                sizeTitle: 16.0,
                                                FontWeight:
                                                FontWeight.bold),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10, left: 15),
                                            child: baseClick(
                                                onTap: () {
                                                  //ADD API HERE
                                                },
                                                title: "Add To Cart",
                                                width: MediaQuery
                                                    .of(context)
                                                    .size
                                                    .width / 2.5,
                                                color: greenColor,
                                                colorTitle:
                                                Colors.white,
                                                height: 40.0,
                                                radius: 6.0,
                                                sizeTitle: 16.0,
                                                FontWeight:
                                                FontWeight.bold),
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            );
                          },
                        ),
                      ),

                    ],
                  ),
                ):
                Container(),

                state.isLoading ==true
                    ? Center(child: loader(context: context))
                    : Container(),

              ],
            ),
          );


        } );



  }
  void error(String errorCode) {
    if (errorCode.isNotEmpty) {
      Fluttertoast.showToast(
          msg: errorCode,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey,
          textColor: greenColor,
          fontSize: 16.0);
      _HomeBloc.add(ClearError()
      );
    }
  }
}
class SlideDots extends StatelessWidget {
  bool isActive;

  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: isActive ? 11 : 13,
      width: isActive ? 11 : 13,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.white),
        color: isActive ? greenColor : Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

Widget loader({context}) {
  return const SpinKitFadingFour(
    color: Colors.green,
    size: 50.0,
  );}
