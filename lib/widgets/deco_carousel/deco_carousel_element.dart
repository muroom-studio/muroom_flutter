import 'package:flutter/material.dart';
import 'package:muroom_flutter/models/deco_studio.dart';
import 'package:muroom_flutter/models/rental_studio.dart';

class DecoCarouselElement extends StatelessWidget {
  const DecoCarouselElement({
    super.key,
    required this.margin,
    required this.deco,
  });

  final EdgeInsets margin;
  final DecoStudio deco;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  deco.images[0],
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 5),
            child: Text(
              deco.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(height: 1.2, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
