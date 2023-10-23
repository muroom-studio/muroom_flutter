import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(5.0),
        child: Container(
          color: Colors.black,
          height: 0.1,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconButton(
            onPressed: () {
              // GoRouter.of(context).go('/menu');
            },
            icon: SvgPicture.asset(
              'assets/icons/menu.svg',
              width: 100,
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFD9D9D9),
                contentPadding: const EdgeInsets.only(left: 10),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                hintText: '뮤룸 스튜디오 검색',
                suffixIcon: IconButton(
                  onPressed: () {
                    // Search function
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/search.svg',
                    width: 100,
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              // GoRouter.of(context).go('/favorite');
            },
            icon: SvgPicture.asset(
              'assets/icons/heart.svg',
              colorFilter:
                  const ColorFilter.mode(Color(0xFF5720DA), BlendMode.srcIn),
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
