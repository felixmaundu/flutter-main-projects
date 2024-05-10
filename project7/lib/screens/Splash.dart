import 'package:flutter/material.dart';
import 'package:project7/screens/LandingScreen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetoHome();
  }

  _navigatetoHome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LandingScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(210, 1, 117, 212),
        body: Container(
          child: const Center(
            child: Text(
              'Cars.com',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
            ),
          ),
        ));
  }
}
