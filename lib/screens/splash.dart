import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).go('/');
    });

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(87, 32, 218, 1),
              Color.fromRGBO(255, 25, 72, 1),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: 3,
                  top: 3,
                  child: Opacity(
                    opacity: 1,
                    child: Image.asset(
                      'assets/images/MUROOM_LOGO_SHADOW.png',
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),
                Positioned(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                    child: Image.asset(
                      'assets/images/MUROOM_LOGO.png',
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28),
            Text(
              'muroom studio',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.8),
                    offset: const Offset(2, 2),
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
