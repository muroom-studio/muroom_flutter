import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      // bottom: PreferredSize(
      //   preferredSize: const Size.fromHeight(0),
      //   child: Container(
      //     color: const Color(0xFF8A8A8A),
      //     height: 0.2,
      //   ),
      // ),
      shape: const Border(
        bottom: BorderSide(color: Color(0xFF8A8A8A), width: 0.2),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: 60,
            height: 54,
            child: IconButton(
              onPressed: () {
                // GoRouter.of(context).go('/menu');
              },
              icon: SvgPicture.asset(
                'assets/icons/menu.svg',
                width: 100,
              ),
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
                suffixIcon: SizedBox(
                  width: 60,
                  child: IconButton(
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
          ),
          SizedBox(
            width: 60,
            child: IconButton(
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
          ),
        ],
      ),
    );
  }
}
