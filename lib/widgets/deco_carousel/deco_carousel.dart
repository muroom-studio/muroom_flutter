import 'package:flutter/material.dart';
import 'package:muroom_flutter/data/deco_studio_data.dart';

class DecoCarousel extends StatelessWidget {
  final String contentTitle;

  const DecoCarousel({super.key, required this.contentTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
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
            itemCount: DecoStudioData.length,
            itemBuilder: (context, index) {
              final margin = index == 0
                  ? const EdgeInsets.only(left: 15, right: 0)
                  : index == DecoStudioData.length - 1
                      ? const EdgeInsets.only(left: 7, right: 15)
                      : const EdgeInsets.only(left: 7);
              return null;

              // return StudioCarouselElement(
              //     margin: margin, studio: DecoStudioData[index]);
            },
          ),
        ),
      ],
    );
  }
}
