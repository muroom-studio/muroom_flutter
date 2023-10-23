import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:muroom_flutter/screens/chat.dart';
import 'package:muroom_flutter/screens/community.dart';
import 'package:muroom_flutter/screens/map.dart';
import 'package:muroom_flutter/screens/my_page.dart';

import 'package:muroom_flutter/screens/start.dart';
import 'package:muroom_flutter/screens/home.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final GoRouter _router = GoRouter(
    initialLocation: "/home",
    routes: [
      GoRoute(
        path: "/start",
        builder: (context, state) => const StartScreen(),
      ),
      GoRoute(
        path: "/home",
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: "/map",
        builder: (context, state) => const MapScreen(),
      ),
      GoRoute(
        path: "/community",
        builder: (context, state) => const CommunityScreen(),
      ),
      GoRoute(
        path: "/chat",
        builder: (context, state) => const ChatScreen(),
      ),
      GoRoute(
        path: "/my-page",
        builder: (context, state) => const MyPageScreen(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
