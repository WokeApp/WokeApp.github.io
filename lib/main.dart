import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woke_website/constants.dart';
import 'package:woke_website/pages/About.dart';
import 'package:woke_website/pages/Landing.dart';
import 'package:woke_website/pages/features.dart';
import 'package:woke_website/pages/footer.dart';
import 'package:woke_website/pages/team.dart';

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.black, actions: [
          Image.asset('woke.png'),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xff333333))),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Be A Part of Woke',
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
      ),
    );
  }
}
