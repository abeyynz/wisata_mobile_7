import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wisata_mobile_7/materimodulscreens/pertemuan6.dart';
import 'package:wisata_mobile_7/screens/landingpage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 5),(){
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LandingPage()));
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F3F5),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Lottie.network(
              'https://lottie.host/956e1e4f-8c98-4206-ae82-50dd50161d69/dtw01aXDDE.json',
              width: 350,
              height: 350
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 300),
                Text(
                  'ASLABTIF',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1B1B1B),
                  ),
                ),
                Text(
                  'TRAVEL',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1B1B1B),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}