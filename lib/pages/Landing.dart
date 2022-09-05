import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woke_website/constants.dart';
import 'dart:html' as html;

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print(width);
    return (width > 500)
        ? Padding(
            padding: const EdgeInsets.fromLTRB(2, 8, 2, 8),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/Hero.png',
                  height: height,
                  width: width,
                ),
                Container(
                    height: height,
                    width: width,
                    child: Row(
                      crossAxisAlignment: (width > 900)
                          ? CrossAxisAlignment.center
                          : CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(flex: 1, child: Container()),
                        Flexible(
                          flex: 3,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Wrap(
                                  children: [
                                    Text(
                                      'We are a ',
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: (width > 800) ? 40 : 20,
                                          decoration: TextDecoration.none),
                                    ),
                                    Text(
                                      'platform',
                                      style: GoogleFonts.poppins(
                                          color: wokeColor,
                                          fontSize: (width > 800) ? 40 : 20,
                                          decoration: TextDecoration.none),
                                    ),
                                  ],
                                ),
                                Wrap(
                                  children: [
                                    Text(
                                      'exclusively for ',
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: (width > 800) ? 40 : 20,
                                          decoration: TextDecoration.none),
                                    ),
                                    Text(
                                      'couples!',
                                      style: GoogleFonts.poppins(
                                          color: wokeColor,
                                          fontSize: (width > 800) ? 40 : 20,
                                          decoration: TextDecoration.none),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                const Color(0xff333333))),
                                    onPressed: () {
                                      html.window.open(
                                          'https://share.hsforms.com/1zCR1Yl_fSN6oxYLiZoJZ5wcvxpv',
                                          '_blank');
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        'Join Now!',
                                        style: GoogleFonts.poppins(
                                            color: wokeColor),
                                      ),
                                    )),
                                // SizedBox(
                                //   height: height * 0.1,
                                // ),
                              ]),
                        ),
                        const Spacer(),
                        Flexible(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CarouselSlider(
                                  items: [
                                    Image.asset(
                                      'assets/Group.png',
                                    ),
                                    Image.asset(
                                      'assets/Group-1.png',
                                    ),
                                    Image.asset(
                                      'assets/Group-2.png',
                                    ),
                                  ],
                                  options: CarouselOptions(
                                      height: (width > 900)
                                          ? height * 0.6
                                          : (width > 500)
                                              ? height * 0.4
                                              : height * 0.19,
                                      autoPlay: true,
                                      initialPage: 1,
                                      viewportFraction: 1,
                                      autoPlayCurve: Curves.fastOutSlowIn,
                                      autoPlayInterval:
                                          const Duration(seconds: 2),
                                      clipBehavior: Clip.hardEdge)),
                            ],
                          ),
                        )
                      ],
                    )),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.fromLTRB(2, 8, 2, 8),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CarouselSlider(
                          items: [
                            Image.asset(
                              'assets/Group-2.png',
                            ),
                            Image.asset(
                              'assets/Group-1.png',
                            ),
                            Image.asset(
                              'assets/Group.png',
                            ),
                          ],
                          options: CarouselOptions(
                              height: height * 0.7,
                              viewportFraction: 1,
                              autoPlay: true,
                              initialPage: 0,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              autoPlayInterval: const Duration(seconds: 2),
                              clipBehavior: Clip.hardEdge)),
                    ],
                  ),
                ),
                Container(
                    height: height,
                    width: width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Wrap(
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Text(
                                    'We are a ',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: (width > 800) ? 40 : 20,
                                        decoration: TextDecoration.none),
                                  ),
                                  Text(
                                    'platform',
                                    style: GoogleFonts.poppins(
                                        color: wokeColor,
                                        fontSize: (width > 800) ? 40 : 20,
                                        decoration: TextDecoration.none),
                                  ),
                                ],
                              ),
                              Wrap(
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Text(
                                    'exclusively for ',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: (width > 800) ? 40 : 20,
                                        decoration: TextDecoration.none),
                                  ),
                                  Text(
                                    'couples!',
                                    style: GoogleFonts.poppins(
                                        color: wokeColor,
                                        fontSize: (width > 800) ? 40 : 20,
                                        decoration: TextDecoration.none),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color(0xff333333))),
                                  onPressed: () {
                                    html.window.open(
                                        'https://share.hsforms.com/1zCR1Yl_fSN6oxYLiZoJZ5wcvxpv',
                                        '_blank');
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      'Join Now!',
                                      style:
                                          GoogleFonts.poppins(color: wokeColor),
                                    ),
                                  )),
                              // SizedBox(
                              //   height: height * 0.1,
                              // ),
                            ]),
                      ],
                    )),
              ],
            ),
          );
  }
}
