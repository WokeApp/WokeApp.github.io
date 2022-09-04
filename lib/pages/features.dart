import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:woke_website/constants.dart';
import 'package:woke_website/widgets/Circular.dart';
import 'package:google_fonts/google_fonts.dart';

class Features extends StatelessWidget {
  const Features({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
        color: Colors.black,
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Text('FEATURES',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    decoration: TextDecoration.none)),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircularCont(text: 'POTS FOR REGULAR SAVINGS'),
                    SizedBox(
                        height: (width > 900) ? height * 0.3 : height * 0.1),
                    const CircularCont(
                      text: 'NO MINIMUM BALANCE',
                      iconAsset: 'no_min_bal.png',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircularCont(text: 'INVESTING TOGETHER'),
                      const SizedBox(
                        height: 30,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: width * 0.3,
                            child: Column(
                              children: [
                                Wrap(
                                  alignment: WrapAlignment.center,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    Text('Building ',
                                        // style: TextStyle(
                                        //     fontSize: 20,
                                        //     color: Colors.white,
                                        //     decoration: TextDecoration.none)
                                        style: GoogleFonts.poppins(
                                          fontStyle: FontStyle.italic,
                                          fontSize: (width > 900) ? 30 : 20,
                                          color: Colors.white,
                                        )),
                                    Text('banking ',
                                        style: GoogleFonts.poppins(
                                            fontSize: (width > 900) ? 30 : 20,
                                            fontStyle: FontStyle.italic,
                                            color: wokeColor,
                                            decoration: TextDecoration.none)),
                                    Text('solutions for',
                                        style: TextStyle(
                                            fontSize: (width > 900) ? 30 : 20,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white,
                                            decoration: TextDecoration.none))
                                  ],
                                ),
                                Text('couples!',
                                    style: GoogleFonts.poppins(
                                        fontSize: (width > 900) ? 30 : 20,
                                        fontStyle: FontStyle.italic,
                                        color: wokeColor,
                                        decoration: TextDecoration.none))
                              ],
                            ),
                          ),
                          Opacity(
                            opacity: 0.25,
                            child: Image.asset('assets/rings.png',
                                width:
                                    (width < 500) ? width * 0.25 : width * 0.4),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const CircularCont(
                        text: 'HIGHLY SECURE',
                        iconAsset: 'shield.png',
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircularCont(text: 'BUDGETING AND ANALYSIS'),
                    SizedBox(
                        height: (width > 900) ? height * 0.3 : height * 0.1),
                    const CircularCont(
                      text: 'NO HIDDEN FEES',
                      iconAsset: 'no_hidden_fees.png',
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ));
  }
}
