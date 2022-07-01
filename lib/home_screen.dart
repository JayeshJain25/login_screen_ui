import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Logged In Successfully !!!',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: const Color.fromRGBO(0, 0, 0, 1),
            fontSize: 30,
            fontWeight: FontWeight.normal,
            height: 1,
          ),
        ),
      ),
    );
  }
}
