import 'package:flutter/material.dart';
import 'package:login_app/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return MyApp();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Text('')),
    );
  }
}
