import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CircularCont extends StatelessWidget {
  const CircularCont({required this.text, Key? key}) : super(key: key);
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
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
                fontSize: 20,
                fontStyle: FontStyle.italic)),
      )),
    );
  }
}
