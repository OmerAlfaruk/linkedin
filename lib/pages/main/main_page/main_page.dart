import 'package:flutter/material.dart';
import 'package:linkedin_mobile_clone/pages/main/main_page/widget/app_bar_widget.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBarWidget(
            context,
            key: _scaffoldState,
            title: "Search Jobs",
            isJobsTab: true,
            onLeadingTapClickListener: () {
              setState(() {
                _scaffoldState.currentState!.openDrawer();
              });
            }
        ),


    );
  }
}