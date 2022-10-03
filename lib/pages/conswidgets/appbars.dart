import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixuis/pages/conswidgets/constantelements.dart';

class Appbars extends StatelessWidget {
  final String appbartitle;
  const Appbars({Key? key, required this.appbartitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(appbartitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  fontSize: 30, fontWeight: FontWeight.w800)),
          Padding(
            padding: const EdgeInsets.all(13),
            child: Row(
              children: [
                Icon(
                  Icons.cast,
                  color: constwhite,
                  size: 30,
                ),
                SizedBox(
                  width: constantwidths,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(color: Colors.blue),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
