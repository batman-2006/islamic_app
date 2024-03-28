import 'package:flutter/material.dart';

class Azkaar extends StatefulWidget {
  const Azkaar({super.key});

  @override
  State<Azkaar> createState() => _AzkaarState();
}

int list = data.length+1;

final List<dynamic> data = [
  {
    'ccNumber': '1111 1111 1111 1111',
    'expDate': '12/27',
    'cvv': '123',
    'ccHolderName': 'xxx'
  },
  {
    'ccNumber': '2222 2222 2222 2222',
    'expDate': '12/27',
    'cvv': '123',
    'ccHolderName': 'yyy'
  },
  {
    'ccNumber': '3333 3333 3333 3333',
    'expDate': '12/27',
    'cvv': '123',
    'ccHolderName': 'zzz'
  }
];

class _AzkaarState extends State<Azkaar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Transform(
              transform: Matrix4.translationValues(180.0, 0.0, 0.0),
              child: Text(" أدعية"),
            ),
            backgroundColor: Color.fromRGBO(12, 167, 137, 1)),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    SizedBox(
                      height: 100.0,
                    ),
                    Container(
                      width: 350.0,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(206, 237, 231, 1),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(10, 118, 68, 1),
                                //width: 2.0,
                              ),
                              color: Color.fromRGBO(10, 118, 68, 1),
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("$i",
                              style: TextStyle(
                                fontSize: 45.0,
                                color: Colors.white
                              ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("data",
                            style: TextStyle(
                              fontSize: 25.0,
                            ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}
