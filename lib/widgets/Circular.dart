import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CircularCont extends StatelessWidget {
  const CircularCont({required this.text, Key? key}) : super(key: key);
  final text;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.1,
      height: width * 0.1,
      decoration: const BoxDecoration(
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
