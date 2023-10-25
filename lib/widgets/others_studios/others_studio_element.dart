import 'package:flutter/material.dart';

class OtherStudioElement extends StatelessWidget {
  final String user;
  final String profileImage;
  final String description;
  final List<String> images;

  const OtherStudioElement({
    super.key,
    required this.user,
    required this.profileImage,
    required this.description,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final customWidth = (deviceWidth - 15 - 15 - 7) * 1 / 3;

    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      images[1],
                      width: customWidth,
                      height: customWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 7),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      images[2],
                      width: customWidth,
                      height: customWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 7),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  images[0],
                  width: customWidth * 2,
                  height: customWidth * 2 + 7,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          const SizedBox(height: 7),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  profileImage,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: deviceWidth - 107,
                margin: const EdgeInsets.only(left: 7),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Color(0xFF8A8A8A),
                      ),
                    ),
                    Text(
                      description,
                      textAlign: TextAlign.left,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
