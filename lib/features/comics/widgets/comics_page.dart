import 'package:flutter/material.dart';

class ComicsPage extends StatelessWidget {
  const ComicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: Text("Comics"),
      ),
    );
  }
}
