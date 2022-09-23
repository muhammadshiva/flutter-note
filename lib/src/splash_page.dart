import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   Timer(Duration(seconds: 5), () {
  //     Navigator.pushNamed(context, '/login');
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.note_alt,
              color: Color(0xFF1F1449),
            ),
            SizedBox(width: 10),
            AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText(
                  'Catatan Rahasiaku',
                  textStyle: GoogleFonts.poppins().copyWith(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                  duration: Duration(milliseconds: 2000),
                ),
                TypewriterAnimatedText(
                  'Simpan catatanmu disini ...',
                  textStyle: GoogleFonts.poppins().copyWith(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                // ScaleAnimatedText(
                //   'Catatan Rahasia',
                //   textStyle: TextStyle(fontSize: 50.0, fontFamily: 'Poppins'),
                //   duration: Duration(milliseconds: 3000),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
