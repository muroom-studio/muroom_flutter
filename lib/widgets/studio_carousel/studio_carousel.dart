import 'package:flutter/material.dart';
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
        Container(
          margin: const EdgeInsets.only(left: 15),
          child: Text(
            contentTitle,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
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
