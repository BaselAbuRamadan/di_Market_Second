import 'package:di_market_second/ui/Slider/Slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class language extends StatefulWidget {
  const language({Key? key}) : super(key: key);

  @override
  _languageState createState() => _languageState();
}

class _languageState extends State<language> {
  @override


  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Image.asset("assets/image/logo_splach.png",scale: 1.5,
                    height:size.height/4,
                    width:size.width/2,
                  )),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: const Text("Please choose the app language",
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                height: size.height/15,
              ),
              Container(
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Slider1()));
                  },
                  child: Container(
                    height: size.height/12,
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Card(
                      elevation: 5,
                      child: Row(
                        children: [
                          Container(
                            height: 25,
                              width: 35,
                              child: Image.asset("assets/image/en.png")
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.only(right: 20),
                            child: const Text("English"),
                          ),
                          const Spacer(),
                        ],
                      ),

                    ),
                  ),
                ),
              ),
              Container(
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Slider1()));
                  },
                  child: Container(
                    height: size.height/12,
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Card(
                      elevation: 5,
                      child: Row(
                        children: [
                          Container(
                              height: 25,
                              width: 35,
                              child: Image.asset("assets/image/ar.png")
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.only(right: 20),
                            child: const Text("العربية"),
                          ),
                          const Spacer(),
                        ],
                      ),

                    ),
                  ),
                ),
              ),
              Container(
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Slider1()));
                  },
                  child: Container(
                    height: size.height/12,
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Card(
                      elevation: 5,
                      child: Row(
                        children: [
                          SizedBox(
                              height: 25,
                              width: 35,
                              child: Image.asset("assets/image/trk.png")
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.only(right: 20),
                            child: const Text("turkie"),
                          ),
                          const Spacer(),
                        ],
                      ),

                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
