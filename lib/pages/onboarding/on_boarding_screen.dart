import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../theme/styles.dart';
import '../../widget/button_container_widget.dart';
import '../../widget/google_button_container_widget.dart';
import '../auth/sign_in_page.dart';
import '../auth/sign_up_page.dart';
import 'on_boarding_entity.dart';
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<OnBoardingEntity> onBoardingData=OnBoardingEntity.onBoardingData;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
      body: PageView.builder(
          itemCount: onBoardingData.length,
          itemBuilder: (context,index){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/app_logo_svg.svg",
                  width: 30,
                  height: 30,
                ),
                const SizedBox(
                  height: 15,
                ),
                Image.asset("assets/${onBoardingData[index].image}"),
                Center(
                  child: Text(
                    "${onBoardingData[index].title}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: index == 0
                              ? linkedInDarkGrey313335
                              : linkedInWhiteFFFFFF,
                          border: Border.all(width: 1),
                          shape: BoxShape.circle),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: index == 1
                              ? linkedInDarkGrey313335
                              : linkedInWhiteFFFFFF,
                          border: Border.all(width: 1),
                          shape: BoxShape.circle),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: index == 2
                              ? linkedInDarkGrey313335
                              : linkedInWhiteFFFFFF,
                          border: Border.all(width: 1),
                          shape: BoxShape.circle),
                    ),

                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: ButtonContainerWidget(
                    title: "Join now",
                    onTap: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const SignUpPage()), (route) => false,);

                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: GoogleButtonContainerWidget(
                    hasIcon: true,
                    icon: SvgPicture.asset(
                      "assets/google_logo_svg.svg",
                      width: 20,
                      height: 20,
                    ),
                    title: "Join with Google",
                    onTap: () {},
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => SignInPage()), (route) => false,);
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: linkedInBlue0077B5),
                    ),
                  ),
                )
              ],

            );

      }),
      ),
    );
  }
}
