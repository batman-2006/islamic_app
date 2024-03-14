import 'package:flutter/material.dart';
import 'package:islamic_app/screens/home.dart';
import 'package:islamic_app/screens/radio.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'splash_screen.dart';
class MainScreen extends StatefulWidget {

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
   int time = 4*3600;
   Widget curr = home();
   int _activePage = 0;
   String title = "الصفخة الرئيسية";
   formattedTime({required int time}) {
     int h = time ~/ 3600;
     int m = ((time - h * 3600)) ~/ 60;
     int s = time - (h * 3600) - (m * 60);


     return "- $h : $m : $s";
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Transform(
              transform: Matrix4.translationValues(150.0, 0.0, 0.0),
              child: Text("$title"),
            ),
            leading: Icon(Icons.settings),
            backgroundColor: Color.fromRGBO(12, 167, 137, 1)),


        bottomNavigationBar: CurvedNavigationBar(
          index: 2,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.green,
          color: Color.fromRGBO(12, 167, 137, 1),
          animationDuration: const Duration(milliseconds: 300),
          items: [

            Icon(
              Icons.book,
              size: 35.0,
              color: Colors.white,
            ),
            Icon(
              Icons.mosque,
              size: 35.0,
              color: Colors.white,
            ),
            Icon(
              Icons.home_filled,
              size: 40.0,
              color: Colors.white,
            ),
            Icon(
              Icons.face,
              size: 35.0,
              color: Colors.white,
            ),
            Icon(
              Icons.radio,
              size: 35.0,
              color: Colors.white,
            ),
          ],
          onTap: (index){
            if(index == 4) {
              setState(() {
                curr = radio();
                title = "إذاعة القرأن الكريم";
              });

            }
            else if(index == 2){
              setState(() {
                curr = home();
                title = "الصفخة الرئيسية";
              });
            }
          },
        ),
        body: curr
    );
  }
}
