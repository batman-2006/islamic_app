import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/screens/MainScrenn.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> MainScreen()));

    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 280.0,
            ),
            CircleAvatar(
              radius: 98, // Image radius
              backgroundImage: AssetImage('assets/images/logo.jpg'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "جنة الإسلام",
              style: TextStyle(
                fontSize: 60.0,
                fontFamily: "NotoNastaliqUrdu",
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "تصميم و برمجة أحمد هريدي",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Text(
              "2024",
              style: TextStyle(
                fontSize: 20.0,
              ),
            )

          ],
        )),
      ),
    );
  }
}
