import 'package:flutter/material.dart';
import 'package:islamic_app/screens/tasbeeh.dart';
import 'package:timer_count_down/timer_count_down.dart';

import 'Azkaar_main.dart';

class home extends StatelessWidget {
  int time = 4*3600;

  formattedTime({required int time}) {
    int h = time ~/ 3600;
    int m = ((time - h * 3600)) ~/ 60;
    int s = time - (h * 3600) - (m * 60);


    return "- $h : $m : $s";
  }
  @override
  Widget build(BuildContext context) {
    return


       Column(
          children: [
            Container(
                width: 450.00,
                height: 180.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/back.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 40.0, 0, 0),
                  child: Column(
                    children: [
                      Text(
                        "صلاة الظهر ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      Text(
                        "ص 05:03",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30.0),
                      ),
                      // Text(
                      //   "- 04 : 37 :12",
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: 40.0,
                      //   ),
                      // ),

                      Countdown(
                        // controller: _controller,
                          seconds: time,
                          build: (_, double time) => Text(
                            formattedTime(time: time.round()),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                            ),
                          ),
                          interval: Duration(milliseconds: 1000),
                          onFinished: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Timer is done!'),
                              ),
                            );
                          }
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "القائمة الرئيسية",
              style: TextStyle(fontSize: 20.0),
            ),
            Container(
              width: 150.0,
              height: 7.0,
              color: Color.fromRGBO(12, 167, 137, 1),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(12, 167, 137, 1),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 7.0,
                        ),
                        Image(
                          image: AssetImage("assets/images/icon2.png"),
                          width: 105.0,
                        ),
                        Text(
                          "قراءة قرأن",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(12, 167, 137, 1),
                          borderRadius:
                          BorderRadius.all(Radius.circular(20.0))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Icon(
                            Icons.headphones,
                            size: 90.0,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "سماع قرأن",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder:
                            (context)=> Azkaar_main()
                        ));
                      },
                      child: Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(12, 167, 137, 1),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20.0))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5.0,
                            ),
                            Image(
                              image: AssetImage("assets/images/icon1.png"),
                              width: 109.0,
                            ),
                            Text(
                              "أذكار و أدعية",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: TextButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:
                      (context)=> tasbeeh()
                      ));
                    },
                    child: Container(
                      width: 145.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(12, 167, 137, 1),
                          borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Image(
                            image: AssetImage("assets/images/icon3.png"),
                            width: 90.0,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "السبحة الإلكترونية",
                            style: TextStyle(
                                fontSize: 19.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        );
  }
}
