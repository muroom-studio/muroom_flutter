import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class BotAppBar extends StatelessWidget {
  const BotAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).go('/');
            },
            icon: const Icon(Icons.home_rounded),
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).go('/map');
            },
            icon: const Icon(Icons.location_on_rounded),
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).go('/community');
            },
            icon: const Icon(Icons.newspaper_rounded),
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).go('/chat');
            },
            icon: const Icon(Icons.message_rounded),
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).go('/my-page');
            },
            icon: const Icon(Icons.person_rounded),
          ),
        ],
      ),
    );
  }
}
