import 'package:flutter/material.dart';
import 'package:linkedin_mobile_clone/pages/onboarding/on_boarding_screen.dart';
import 'package:linkedin_mobile_clone/pages/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashPage(child: OnBoardingScreen(),),
    );
  }
}
