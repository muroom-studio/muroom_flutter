import 'package:flutter/material.dart';
import 'package:muroom_flutter/widgets/top_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: TopAppBar(),
      ),
      body: Center(
        child: Text('홈화면'),
      ),
    );
  }
}
