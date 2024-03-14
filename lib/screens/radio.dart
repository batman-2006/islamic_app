import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


class radio extends StatefulWidget {
  @override
  State<radio> createState() => _radioState();
}

class _radioState extends State<radio> {
  String title = "إذاعة القرأن الكريم من القاهرة";
  final player = AudioPlayer();
  String url = "https://n0b.radiojar.com/8s5u5tpdtwzuv?rj-ttl=5&rj-tok=AAABjcSJeVsAUq-s00ceUGtj3g";
  int togg = 1;

  @override
  Widget build(BuildContext context) {
    return


      Column(
        children: [
          SizedBox(
            height: 25.0,
          ),
          Image(
            image: AssetImage("assets/images/quran.png"),
            width: 405.0,
          ),
          Text("$title",
          style: TextStyle(
            fontSize: 28.0
          ),

          ),
          SizedBox(
            height: 15.0,
          ),
          SizedBox(

            width: 300.0,
            height: 50.0,
            child: togg == 1 ? ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color.fromRGBO(12, 167, 137, 1))
              ),
              onPressed: (){
                setState(() {
                  togg =0;
                });
                player.play(UrlSource(url));

              },
              child: Icon(Icons.play_arrow,size: 50.0),
            ): ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromRGBO(12, 167, 137, 1))
              ),
              onPressed: (){
                setState(() {
                  togg =1;
                });

                player.pause();

              },
              child: Icon(Icons.pause,size: 50.0),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(

            width: 200.0,
            height: 50.0,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey)
              ),

              onPressed: () {
                Alert(
                  context:context,
                  type:AlertType.info,
                  title: "قائمة الإذاعات",
                  buttons: [
                    DialogButton(
                      child: Text(
                        "القاهرة",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () {
                        setState(() {
                           title = "إذاعة القرأن الكريم من القاهرة";
                           url = "https://n0b.radiojar.com/8s5u5tpdtwzuv?rj-ttl=5&rj-tok=AAABjcSJeVsAUq-s00ceUGtj3g";
                        });
                        player.stop();
                        Navigator.pop(context);


                      },
                      width: 120,
                      color: Color.fromRGBO(12, 167, 137, 1),

                    ),
                    DialogButton(

                      child: Text(
                        "السعودية",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () {
                       setState(() {
                          title = "إذاعة القرأن الكريم من السعودية";
                          url = "https://n08.radiojar.com/4wqre23fytzuv?rj-ttl=5&rj-tok=AAABjin5ctwAHjXa0sSEPfbqPg";
                       });
                       player.stop();

                       Navigator.pop(context);
                      },
                      color: Color.fromRGBO(12, 167, 137, 1),
                      width: 120,
                    )
                  ],
                ).show();
              },
              child: Text("تغير الإذاغة",style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),),
            ),
          )
        ],
      );
  }
}
