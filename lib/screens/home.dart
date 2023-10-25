import 'package:flutter/material.dart';
import 'package:muroom_flutter/widgets/ad_banner.dart';
import 'package:muroom_flutter/widgets/deco_carousel/deco_carousel.dart';
import 'package:muroom_flutter/widgets/others_studios/others_studios.dart';
import 'package:muroom_flutter/widgets/studio_carousel/studio_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget horizontalLine = Column(
      children: [
        const SizedBox(height: 10),
        Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Color(0xFFF2F2F2), width: 10.0),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10),
          const AdBanner(),
          horizontalLine,
          const StudioCarousel(
            contentTitle: 'monte님의 동네 뮤룸 스튜디오',
          ),
          horizontalLine,
          const DecoCarousel(
            contentTitle: '뮤룸 스튜디오 꾸미기',
          ),
          horizontalLine,
          const AdBanner(
            fullWidth: true,
          ),
          horizontalLine,
          const OtherStudios(),
          // 이후 둘러보기로 이동
          // 둘러보기는 다른 뮤룸 스튜디오 구경 + 장비 소개
        ],
      ),
    );
  }
}
