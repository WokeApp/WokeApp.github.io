import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woke_website/constants.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      // Image.asset('woke.png', width: 100),

      Container(
        width: width,
        decoration: const BoxDecoration(
            color: Color(0xff333333),
            image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: ExactAssetImage('woke.png'),
                opacity: 0.1)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text('Follow Us',
                  style: GoogleFonts.workSans(
                    color: wokeColor,
                    fontStyle: FontStyle.italic,
                    fontSize: (width > 500) ? 30 : 22,
                  )),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        html.window.open(
                            'https://www.facebook.com/wokeapphq', '_blank');
                      },
                      child: Image.asset('facebook.png', height: 30, width: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        html.window.open(
                            'https://www.instagram.com/wokeapphq/', '_blank');
                      },
                      child: Image.asset('insta.png', height: 30, width: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        html.window
                            .open('https://twitter.com/WokeAppHQ', '_blank');
                      },
                      child: Image.asset('twitter.png', height: 30, width: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        html.window.open(
                            'https://www.linkedin.com/company/woke-app-hq/',
                            '_blank');
                      },
                      child: Image.asset('linkedIn.png', height: 30, width: 30),
                    ),
                  ),
                ],
              ),
              Text('Contact Us',
                  style: GoogleFonts.workSans(
                    color: wokeColor,
                    fontStyle: FontStyle.italic,
                    fontSize: (width > 500) ? 30 : 22,
                  )),
              const SizedBox(height: 10),
              Text('wokeapphq@gmail.com',
                  style: GoogleFonts.workSans(
                    color: Colors.white,
                    fontSize: (width > 500) ? 22 : 16,
                  )),
              const SizedBox(height: 10),
              Text('Ph No- 8660570503, 8762719014',
                  style: GoogleFonts.workSans(
                    color: Colors.white,
                    fontSize: (width > 500) ? 22 : 16,
                  )),
            ],
          ),
        ),
      )
    ]);
  }
}
