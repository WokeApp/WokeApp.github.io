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
    return Stack(alignment: Alignment.bottomCenter, children: [
      Container(
          width: width, height: height * 0.4, color: const Color(0xff333333)),
      Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  image: const DecorationImage(
                      image: ExactAssetImage('footer.png'), fit: BoxFit.fill)),
              width: (width > 900) ? width * 0.6 : width * 0.9,
              height: (width > 900) ? height * 0.4 : height * 0.3,
              child: Padding(
                padding: EdgeInsets.fromLTRB(60, 30, width * 0.3, 10),
                child: Wrap(children: [
                  Text('Join Woke to meet the next-gen couples!',
                      style: GoogleFonts.poppins(
                        fontStyle: FontStyle.values[0],
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.black,
                      )),
                  Text(
                      'Manage your finances together to enjoy life hassle-free!',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                      )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xff333333))),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Try Right Now!',
                            style: GoogleFonts.poppins(
                              color: wokeColor,
                              fontSize: 12,
                            ),
                          ),
                        )),
                  )
                ]),
              )),
          SizedBox(height: height * 0.2)
        ],
      )
    ]);
  }
}
