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
    return Container(
        color: Colors.black,
        child: Column(
          children: [
            const Text('Features',
                style: TextStyle(
                    fontSize: 20,
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
                  children: const [
                    CircularCont(text: 'BUDGETING AND ANALYSIS OF SPENDING'),
                    SizedBox(height: 100),
                    CircularCont(text: 'BUDGETING AND ANALYSIS OF SPENDING'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircularCont(
                          text: 'BUDGETING AND ANALYSIS OF SPENDING'),
                      const SizedBox(
                        height: 30,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text('Building ',
                                      // style: TextStyle(
                                      //     fontSize: 20,
                                      //     color: Colors.white,
                                      //     decoration: TextDecoration.none)
                                      style: GoogleFonts.poppins(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 20,
                                        color: Colors.white,
                                      )),
                                  Text('banking ',
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic,
                                          color: wokeColor,
                                          decoration: TextDecoration.none)),
                                  const Text('solutions for',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.white,
                                          decoration: TextDecoration.none))
                                ],
                              ),
                              Text('couples!',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                      color: wokeColor,
                                      decoration: TextDecoration.none))
                            ],
                          ),
                          Opacity(
                            opacity: 0.4,
                            child:
                                Image.asset('rings.png', height: height * 0.8),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const CircularCont(
                          text: 'BUDGETING AND ANALYSIS OF SPENDING'),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CircularCont(text: 'BUDGETING AND ANALYSIS OF SPENDING'),
                    SizedBox(
                      height: 100,
                    ),
                    CircularCont(text: 'BUDGETING AND ANALYSIS OF SPENDING'),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
