import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woke_website/constants.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(2, 8, 2, 8),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/Hero.png',
            height: (width > 900) ? height : height * 0.4,
            width: width,
          ),
          Container(
              height: (width > 900) ? height : height * 0.4,
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
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Join Now!',
                                  style: GoogleFonts.poppins(color: wokeColor),
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
                                        ? height * 0.3
                                        : height * 0.19,
                                autoPlay: true,
                                initialPage: 1,
                                autoPlayCurve: Curves.fastOutSlowIn,
                                autoPlayInterval: const Duration(seconds: 2),
                                clipBehavior: Clip.hardEdge)),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
