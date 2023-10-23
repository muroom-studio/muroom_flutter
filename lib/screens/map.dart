import 'package:flutter/material.dart';
import 'package:muroom_flutter/widgets/appbar/bottom_app_bar.dart';
import 'package:muroom_flutter/widgets/top_app_bar.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: TopAppBar(),
      ),
      body: Center(
        child: Text('MAP'),
      ),
      bottomNavigationBar: BotAppBar(),
    );
  }
}
