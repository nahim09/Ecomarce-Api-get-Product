import 'package:flutter/material.dart';

import 'HomePage.dart';
//import 'package:flutter_api_example/pages/home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        body: Splash(),
      ),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _countDownTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 46, 208, 236),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              width: MediaQuery.of(context).size.width,
               child: Image.asset("asset/ecomarce.png",)
        ),
            const SizedBox(height: 10),
            const Text(
              "Ecommerce Apps",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 30),
            const CircularProgressIndicator(
              color: Colors.red,
            )
          ],
        ));
  }

  void _countDownTimer() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }
}
