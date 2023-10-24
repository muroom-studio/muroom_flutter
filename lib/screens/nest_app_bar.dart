import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:muroom_flutter/screens/splash.dart';
import 'package:muroom_flutter/widgets/appbar/bottom_app_bar.dart';
import 'package:muroom_flutter/widgets/appbar/top_app_bar.dart';

class NestAppBarScreen extends StatelessWidget {
  final Widget nestedWidget;

  const NestAppBarScreen({super.key, required this.nestedWidget});

  bool isSplashScreen(BuildContext context) {
    return GoRouterState.of(context).uri.toString() == '/splash';
  }

  @override
  Widget build(BuildContext context) {
    return isSplashScreen(context)
        ? const SplashScreen()
        : Scaffold(
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(60.0),
              child: TopAppBar(),
            ),
            body: nestedWidget,
            bottomNavigationBar: const BotAppBar(),
          );
  }
}
