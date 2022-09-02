import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woke_website/constants.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text('About',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 30,
            )),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 20, 8, 20),
          child: Text(
              '\'wōk\' : aware of and actively attentive to important facts and issues',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 10, 8, 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Wrap(
              alignment: WrapAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('WOKE ',
                    style: GoogleFonts.workSans(
                      color: wokeColor,
                      fontSize: 40,
                    )),
                Text('is providing ',
                    style: GoogleFonts.workSans(
                      color: Colors.white,
                      fontSize: 40,
                    )),
                Text('couples ',
                    style: GoogleFonts.workSans(
                      color: wokeColor,
                      fontSize: 40,
                    )),
                Text('with a ',
                    style: GoogleFonts.workSans(
                      color: Colors.white,
                      fontSize: 40,
                    )),
                Text('single ',
                    style: GoogleFonts.workSans(
                      color: wokeColor,
                      fontSize: 40,
                    )),
              ],
            ),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                Text('platform ',
                    style: GoogleFonts.workSans(
                      color: wokeColor,
                      fontSize: 40,
                    )),
                Text('for all their ',
                    style: GoogleFonts.workSans(
                      color: Colors.white,
                      fontSize: 40,
                    )),
                Text('financial needs ',
                    style: GoogleFonts.workSans(
                      color: wokeColor,
                      fontSize: 40,
                    )),
              ],
            ),
          ]),
        )
      ]),
    );
  }
}
