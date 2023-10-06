import 'package:flutter/material.dart';
class CreatePage extends StatefulWidget {
  const CreatePage({super.key,  VoidCallback? onCloneClickListener});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Text('create'),
        )
    );
  }
}
