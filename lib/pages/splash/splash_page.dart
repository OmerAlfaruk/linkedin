import 'package:flutter/material.dart';
import 'package:linkedin_mobile_clone/theme/styles.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key, required this.child});

final Widget child;
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: linkedInWhiteFFFFFF,
      body: Center(

      child: Image.asset('assets/app_logo.png'),
    ),);
  }

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 3000)).then((value) {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>widget.child), (route) => false);
    });
  }
}
