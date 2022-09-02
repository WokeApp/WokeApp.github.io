import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Team extends StatelessWidget {
  const Team({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text('Team',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 25,
              )),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: ExactAssetImage('saakshi.png'))),
                          ),
                          const SizedBox(height: 20),
                          Text('Saakshi Adiga',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 18,
                              )),
                          Text('Co-Founder, BITS Pilani Goa',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 18,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: ExactAssetImage('anish.png'))),
                          ),
                          const SizedBox(height: 20),
                          Text('Anish Sreenivas',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 18,
                              )),
                          Text('Co-Founder, BITS Pilani Goa',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 18,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
