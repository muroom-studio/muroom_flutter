import 'package:flutter/material.dart';

class AdBanner extends StatelessWidget {
  const AdBanner({super.key, this.adText = 'AD', this.fullWidth = false});

  final bool fullWidth;
  final String adText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fullWidth
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width - 30,
      height: fullWidth ? 178 : 128,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(fullWidth ? 0 : 5)),
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(87, 32, 218, 1),
            Color.fromRGBO(255, 25, 72, 1),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Text(
          adText,
          textAlign: TextAlign.end,
          style: const TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
