import 'package:di_market_second/ui/Page_Details/bloc/page_details_bloc.dart';
import 'package:di_market_second/ui/Page_Details/bloc/page_details_event.dart';
import 'package:di_market_second/ui/Page_Details/bloc/page_details_state.dart';
import 'package:flutter/material.dart';
import 'package:di_market_second/core/base_widget/base_click.dart';
import 'package:di_market_second/core/constent.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../injectoin.dart';

class page_dtails extends StatefulWidget {
  const page_dtails({Key? key}) : super(key: key);

  @override
  State<page_dtails> createState() => _page_dtailsState();
}

class _page_dtailsState extends State<page_dtails> {
  final _PageDetailsBloc = sl<PageDetailsBloc>();
  void initState() {
    // reqGetHomeData();
    _PageDetailsBloc.add(GetPageDetails( (b) => b..PageID!));

    super.initState();
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
    return BlocBuilder(
        bloc: _PageDetailsBloc,
        builder: (BuildContext context, PageDetailsState state) {
          return Scaffold(
            backgroundColor: const Color(0xFFF8F9FD),
            body: Stack(
              children: [
                (state.GetPageDetails != null)?
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            child: Text("ddfdfdf"),
                          )
                        ],
                      ),
                    ):
                Container(),

                state.isLoading == true
                    ? Center(child: loader(context: context))
                    : Container(),

              ],
            ),

          );


    });
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
      _PageDetailsBloc.add(ClearError()
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
