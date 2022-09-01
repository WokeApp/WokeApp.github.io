import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woke_website/constants.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          color: Colors.black,
          height: height,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                                fontSize: 40,
                                decoration: TextDecoration.none),
                          ),
                          Text(
                            'platform',
                            style: GoogleFonts.poppins(
                                color: wokeColor,
                                fontSize: 40,
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
                                fontSize: 40,
                                decoration: TextDecoration.none),
                          ),
                          Text(
                            'couples!',
                            style: GoogleFonts.poppins(
                                color: wokeColor,
                                fontSize: 40,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0xff333333))),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'Join Now!',
                              style: GoogleFonts.poppins(color: wokeColor),
                            ),
                          ))
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
                            // height: 200,
                            // width: 200,
                            'slider1.png',
                          ),
                          Image.asset(
                            // height: 200,
                            // width: 200,
                            'slider2.png',
                          ),
                          Image.asset(
                            // height: 200,
                            // width: 200,
                            'slider3.png',
                          ),
                        ],
                        options: CarouselOptions(
                          height: height * 0.6,
                          autoPlay: true,
                          initialPage: 0,
                          autoPlayInterval: const Duration(seconds: 2),
                        )),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
