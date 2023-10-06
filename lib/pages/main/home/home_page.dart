import 'package:flutter/material.dart';
import 'package:linkedin_mobile_clone/pages/main/home/widgets/single_post_card_widget.dart';

import '../../../data/post_entity.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<PostEntity> postData = PostEntity.postListData;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: Column(children: [
       Expanded(
       child: ListView.builder(
         itemCount: postData.length,
         itemBuilder: (context, index) {
           final post = postData[index];
           return SinglePostCardWidget(post: post);
         },
       ),
     ),],)
   
    );
  }
}
