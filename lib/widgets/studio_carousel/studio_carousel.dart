import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:muroom_flutter/data/rental_studio_data.dart';
import 'package:muroom_flutter/widgets/studio_carousel/studio_carousel_element.dart';

class StudioCarousel extends StatelessWidget {
  final String contentTitle;

  const StudioCarousel({
    super.key,
    this.contentTitle = '',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 15),
                child: Text(
                  contentTitle,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                GoRouter.of(context).go('/community');
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min, // Row의 크기를 최소로 유지
                children: [
                  Text(
                    '더보기',
                    style: TextStyle(fontSize: 12, color: Color(0xFF8A8A8A)),
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,
                      size: 12, color: Color(0xFF8A8A8A)),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: rentalStudioData.length,
            itemBuilder: (context, index) {
              final margin = index == 0
                  ? const EdgeInsets.only(left: 15, right: 0)
                  : index == rentalStudioData.length - 1
                      ? const EdgeInsets.only(left: 7, right: 15)
                      : const EdgeInsets.only(left: 7);

              return StudioCarouselElement(
                  margin: margin, studio: rentalStudioData[index]);
            },
          ),
        ),
      ],
    );
  }
}
