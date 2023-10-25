import 'package:flutter/material.dart';
import 'package:muroom_flutter/data/deco_studio_data.dart';
import 'package:muroom_flutter/widgets/deco_carousel/deco_carousel_element.dart';

class DecoCarousel extends StatelessWidget {
  final String contentTitle;

  const DecoCarousel({super.key, required this.contentTitle});

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
          height: 161,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: decoStudioData.length,
            itemBuilder: (context, index) {
              final margin = index == 0
                  ? const EdgeInsets.only(left: 15, right: 0)
                  : index == decoStudioData.length - 1
                      ? const EdgeInsets.only(left: 7, right: 15)
                      : const EdgeInsets.only(left: 7);
              return DecoCarouselElement(
                  margin: margin, deco: decoStudioData[index]);

              // return StudioCarouselElement(
              //     margin: margin, studio: DecoStudioData[index]);
            },
          ),
        ),
      ],
    );
  }
}
