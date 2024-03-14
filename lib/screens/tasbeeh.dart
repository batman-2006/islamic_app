import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class tasbeeh extends StatefulWidget {
  @override
  State<tasbeeh> createState() => _tasbeehState();
}

class _tasbeehState extends State<tasbeeh> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Transform(
            transform: Matrix4.translationValues(150.0, 0.0, 0.0),
            child: Text("السبحة الإلكترونية"),
          ),
          backgroundColor: Color.fromRGBO(12, 167, 137, 1)),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(12, 167, 137, 1),
        height: 70.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed:(){
                setState(() {
                  count = 0;
                });
              } ,
                child: Icon(
              Icons.refresh,
              size: 40.0,
              color: Colors.white,
            )),
            TextButton(
              onPressed: (){
                Alert(
                  context:context,
                  type:AlertType.info,
                  title: "قائمة التسبيح",
                  buttons: [
                    DialogButton(
                      child: Text(
                        "تسبيح محدد",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),

                      width: 120,
                      color: Color.fromRGBO(12, 167, 137, 1), onPressed: () {  },

                    ),
                    DialogButton(
                      child: Text(
                        "تسبيح حر",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),


                      width: 120,
                      color: Color.fromRGBO(12, 167, 137, 1), onPressed: () {  },

                    ),
                  ]
                ).show();
              },
              child: Icon(
                Icons.more_horiz,
                size: 40.0,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          TextButton(
              style: ButtonStyle(splashFactory: NoSplash.splashFactory),
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: Column(
                children: [
                  SizedBox(
                    height: 100.0,
                  ),
                  Center(
                    child: Container(
                      child: Center(
                        child: Text(
                          "$count",
                          style:
                              TextStyle(fontSize: 110.0, color: Colors.black),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.green,
                          //width: 2.0,
                        ),
                        shape: BoxShape.circle,
                      ),
                      width: 250.0,
                      height: 350.0,
                    ),
                  ),
                  SizedBox(
                    height: 130.0,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
