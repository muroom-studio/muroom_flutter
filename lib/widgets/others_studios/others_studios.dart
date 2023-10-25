import 'package:flutter/material.dart';
import 'package:muroom_flutter/data/others_studio.dart';
import 'package:muroom_flutter/widgets/others_studios/others_studio_element.dart';

class OtherStudios extends StatelessWidget {
  const OtherStudios({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          child: const Text(
            '다른 뮤룸 스튜디오 구경하기',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ...othersStudioData.map((e) => OtherStudioElement(
              user: e.user,
              profileImage: e.profileImage,
              description: e.description,
              images: e.images,
            ))
      ],
    );
  }
}
