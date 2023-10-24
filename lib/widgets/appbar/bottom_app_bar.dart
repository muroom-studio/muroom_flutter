import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class BotAppBar extends StatelessWidget {
  const BotAppBar({Key? key}) : super(key: key);

  // 공통 아이템 위젯을 생성하는 함수
  Widget _buildNavItem(
      BuildContext context, String route, String iconPath, String label) {
    return SizedBox(
      width: 60,
      height: 65,
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).go(route);
            },
            icon: SvgPicture.asset(
              iconPath,
              width: 100,
            ),
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 13.5),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Color(0xFF8A8A8A), width: 0.2),
        ),
      ),
      child: BottomAppBar(
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(context, '/', 'assets/icons/home.svg', '홈'),
            _buildNavItem(context, '/map', 'assets/icons/location.svg', '지도'),
            _buildNavItem(
                context, '/community', 'assets/icons/community.svg', '둘러보기'),
            _buildNavItem(context, '/chat', 'assets/icons/message.svg', '채팅'),
            _buildNavItem(
                context, '/my-page', 'assets/icons/user.svg', '마이페이지'),
          ],
        ),
      ),
    );
  }
}
