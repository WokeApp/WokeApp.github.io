import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woke_website/constants.dart';
import 'package:woke_website/pages/About.dart';
import 'package:woke_website/pages/Landing.dart';
import 'package:woke_website/pages/features.dart';
import 'package:woke_website/pages/footer.dart';
import 'package:woke_website/pages/team.dart';
import 'dart:html' as html;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'WOKE',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: LayoutBuilder(builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
              // toolbarHeight: height * 0.09,
              backgroundColor: Colors.black,
              actions: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 2, 2, 2),
                  child: Image.asset(
                    'assets/woke.png',
                    height: height * 0.15,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xff333333))),
                      onPressed: () {
                        html.window.open(
                            'https://share.hsforms.com/1zCR1Yl_fSN6oxYLiZoJZ5wcvxpv',
                            '_blank');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Join Us',
                          style: GoogleFonts.poppins(color: wokeColor),
                        ),
                      )),
                )
              ]),
          body: SingleChildScrollView(
            child: Column(children: const [
              Landing(),
              About(),
              Features(),
              Team(),
              Footer(),
            ]),
          ),
        );
      }),
    );
  }
}
