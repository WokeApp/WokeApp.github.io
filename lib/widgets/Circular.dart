import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CircularCont extends StatelessWidget {
  const CircularCont({required this.text, this.iconAsset = '', Key? key})
      : super(key: key);
  final text;
  final iconAsset;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: (width > 900) ? width * 0.1 : width * 0.15,
      height: (width > 900) ? width * 0.1 : width * 0.15,
      decoration: (iconAsset != '')
          ? BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: ExactAssetImage('assets/$iconAsset'), opacity: 0.4))
          : const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: (width > 1200)
                    ? 18
                    : (width > 900)
                        ? 12
                        : 8,
                fontStyle: FontStyle.italic)),
      )),
    );
  }
}
