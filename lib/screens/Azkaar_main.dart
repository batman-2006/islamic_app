import 'package:flutter/material.dart';

class Azkaar_main extends StatefulWidget {
  const Azkaar_main({super.key});

  @override
  State<Azkaar_main> createState() => _Azkaar_mainState();
}

class _Azkaar_mainState extends State<Azkaar_main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Transform(
            transform: Matrix4.translationValues(180.0, 0.0, 0.0),
            child: Text("أذكار و أدعية"),
          ),
          backgroundColor: Color.fromRGBO(12, 167, 137, 1)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Center(
                child: Column(
              children: [
                Container(
                  width: 240.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(12, 167, 137, 1),
                      //width: 2.0,
                    ),
                    color: Color.fromRGBO(12, 167, 137, 1),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Icon(
                      Icons.dark_mode,
                      color: Colors.white,
                      size: 120.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text("أذكار الصباح و المساء",
                style: TextStyle(
                  fontSize: 25.0,
                ),
                )
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 240.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(12, 167, 137, 1),
                          //width: 2.0,
                        ),
                        color: Color.fromRGBO(12, 167, 137, 1),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Image(
                          image: AssetImage("assets/images/icon1.png"),
                          width: 20.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text("ادعية",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    )
                  ],
                )),
          ),

        ],
      ),
    );
  }
}
