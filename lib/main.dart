import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:muroom_flutter/screens/chat.dart';
import 'package:muroom_flutter/screens/community.dart';
import 'package:muroom_flutter/screens/map.dart';
import 'package:muroom_flutter/screens/my_page.dart';
import 'package:muroom_flutter/screens/nest_app_bar.dart';

import 'package:muroom_flutter/screens/splash.dart';
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
    navigatorKey: GlobalKey<NavigatorState>(),
    initialLocation: "/splash",
    routes: [
      ShellRoute(
        navigatorKey: GlobalKey<NavigatorState>(),
        builder: (context, state, child) => NestAppBarScreen(
          nestedWidget: child,
        ),
        routes: [
          GoRoute(
            path: "/splash",
            builder: (context, state) => const SplashScreen(),
          ),
          GoRoute(
            path: "/",
            builder: (context, state) => const HomeScreen(),
            routes: [
              GoRoute(
                path: "map",
                builder: (context, state) => const MapScreen(),
              ),
              GoRoute(
                path: "community",
                builder: (context, state) => const CommunityScreen(),
              ),
              GoRoute(
                path: "chat",
                builder: (context, state) => const ChatScreen(),
              ),
              GoRoute(
                path: "my-page",
                builder: (context, state) => const MyPageScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    final textTheme = GoogleFonts.minaTextTheme(
      Theme.of(context).textTheme, // 기존 테마를 가져와 Google Fonts를 적용
    );

    final theme = ThemeData(
      textTheme: textTheme,
      // 다른 테마 속성들도 설정할 수 있음
    );
    return MaterialApp.router(
      theme: theme,
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
