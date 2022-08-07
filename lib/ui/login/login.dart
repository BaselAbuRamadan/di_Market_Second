import 'dart:ui';

import 'package:di_market_second/core/base_widget/base_click.dart';
import 'package:di_market_second/core/constent.dart';
import 'package:di_market_second/ui/login/bloc/login_bloc.dart';
import 'package:di_market_second/ui/login/bloc/login_event.dart';
import 'package:di_market_second/ui/login/bloc/login_state.dart';
import 'package:di_market_second/injectoin.dart';
// import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// import '../Home_page/page/Home_page.dart';


String Tookin = '';

class login extends StatefulWidget {
  const login ({Key? key,  }) : super(key: key);


  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController? password = TextEditingController();
  TextEditingController? username = TextEditingController();
  // final username = TextEditingController();
  // final password = TextEditingController();

  bool _showPassword = false;
  // String? token;
  // String? fcmToken = "";

  final _loginbloc = sl<LoginBloc>();

    void LOGIN() {

      _loginbloc.add(TryLogin((b) => b
      ..username_email=""
      ..password=""
      ..device_type=""
      ..fcm_token=""

    )
    );
  }

  void initState() {
    LOGIN();
    // // reqGetHomeData();
    // _loginbloc.add(TryLogin());

    super.initState();
  }
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // animationController.dispose();
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
        bloc: _loginbloc,
        builder: (BuildContext context, LoginState state) {
          if (state.isSucessGet == true ) {
            print('doneeeee');

            // WidgetsBinding.instance?.addPostFrameCallback((_) =>
            //     Navigator.of(context)
            //         .push(MaterialPageRoute(builder: (context) => Home())));
            // _Loginbloc.add(ChangeStatus());
          }
      return Scaffold(
          backgroundColor: greyColor,
        body: Stack(

     children: [
       // (state.GetDataUser != null)?

       SingleChildScrollView(
       child: Column(
         children: [
           Row(
             children: [
               Container(
                 padding: EdgeInsets.only(top: 20),
                 height: size.height/3,
                 width: size.width/1,
                 child: Center(
                   child: Image.asset(
                       "assets/image/logo_login.png"
                   ),
                 ),
               ),


             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Container(
                 padding:EdgeInsets.only(left: 15) ,
                 child: Text("Sign In",style: TextStyle(
                   fontSize: 20,fontWeight: FontWeight.w600,fontFamily: "Dancing Script",
                 ),),
               ),
             ],
           ),
           SizedBox(
             height: 20.h,
           ),
           Row(
             children: [
               Container(
                 padding: EdgeInsets.only(left: 10,right: 10),
                 height: size.height/15,
                 width: size.width/1.00,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                   color: Colors.white,
                 ),

                 child: TextField(
                   style: dataStyle.copyWith(color: Colors.black),
                   controller: username! ,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     hintText: "Enter user name or email",
                     hintStyle: dataStyle.copyWith(color: Color(0xffC4C4C4),fontSize: 15),
                     labelStyle: dataStyle.copyWith(color:Colors.black),

                   ),

                 ),
               )
             ],
           ),
           Row(
             children: [
               Container(
                 margin: EdgeInsets.only(top: 10),
                 padding: EdgeInsets.only(left: 10,right: 10),
                 height: size.height/15,
                 width: size.width/1.00,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                   color: Colors.white,
                 ),

                 child: TextField(
                   style: dataStyle.copyWith(color: Colors.black),
                   controller: password! ,
                   obscureText: !_showPassword,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     hintText: "Password",
                     hintStyle: dataStyle.copyWith(color: Color(0xffC4C4C4),fontSize: 15),
                     labelStyle: dataStyle.copyWith(color:Colors.black),
                     suffixIcon: GestureDetector(
                       onTap: () {
                         setState(() {
                           _showPassword = !_showPassword;
                         });
                       },
                       child: Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Image.asset(
                           _showPassword
                               ? 'assets/image/look.png'
                               : 'assets/image/icon_pass.png',
                           width: 20,
                           height: 20,
                         ),
                       ),
                     ),

                   ),

                 ),
               )
             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Container(
                 padding:EdgeInsets.only(top: 10.h,right:10.w ) ,
                 child: const Text("Forgot Your Password ?",style: TextStyle(
                     fontSize: 14,
                     color: Colors.black38
                 ),),
               )
             ],
           ),
           SizedBox(
             height: 10.h,
           ),
           Row(
             children: [
               Container(

                 padding: EdgeInsets.only(left: 10,right: 10),
                 height: size.height/15,
                 width: size.width/1,
                 child: baseClick(
                     onTap: (){
                       if(username!.text.isEmpty){
                         error(('Email required'));
                       }
                       if(password!.text.isEmpty){
                         error(('Password required'));
                       }
                       // if(username!.text.contains("@")){
                       //   error(("Email is imcoorect"));
                       // }
                       else {
                         _loginbloc.add(TryLogin((b) => b
                           ..username_email =
                               username!.text
                         // 'ibraheem@gmail.com'

                           ..password =
                             password!.text
                         // '123456'


                           ..fcm_token = ''
                           ..device_type = ''

                         ));
                       }

                      

                     },


                     title: "Sign In",
                     color: greenColor,
                     colorTitle: Colors.white,
                     height: 50.0,
                     radius: 6.0,
                     sizeTitle: 14.0,
                     FontWeight: FontWeight.bold
                 ),
               )
             ],
           )

         ],
       ),
     ),
       Container(),
       Container(),
       state.isLoading == true
           ? Center(child: loader(context: context))
           : Container(),
     ],



        ),
      );});
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
      _loginbloc.add(ClearError());
    }
  }
}
Widget loader({context}) {
  return SpinKitFadingFour(
    color: Colors.green,
    size: 50.0,
  );
}