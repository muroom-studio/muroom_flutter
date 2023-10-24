import 'package:flutter/material.dart';
import 'package:muroom_flutter/models/rental_studio.dart';

class StudioCarouselElement extends StatelessWidget {
  const StudioCarouselElement({
    super.key,
    required this.margin,
    required this.studio,
  });

  final EdgeInsets margin;
  final RentalStudio studio;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  studio.images[0],
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 5,
                top: 5,
                right: 5,
                child: Text(
                  studio.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  studio.address,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(height: 1.2),
                ),
                Text(
                  '${studio.price} / 월',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold, height: 1.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
