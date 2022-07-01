import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_screen_ui/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool valuefirst = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: const Color.fromRGBO(0, 0, 0, 1),
                fontSize: 30,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 50,
                right: 50,
                top: 10,
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'By signing in you are agreeing our ',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF6B5E5E),
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms & privacy poilcy',
                      style: GoogleFonts.poppins(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFF0386D0),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            Text(
              'Login',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: const Color.fromRGBO(3, 107, 185, 1),
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF263238),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  fillColor: const Color(0xFFF2F2F2),
                  filled: true,
                  suffixIcon: const Icon(Icons.email_outlined),
                  suffixIconColor: const Color(0xFF9E9E9E),
                  labelText: "Email Address",
                  hintText: "Email",
                  labelStyle: GoogleFonts.poppins(
                    fontSize: 13,
                    color: const Color(0xFF9E9E9E),
                  ),
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 13,
                    color: const Color(0xFF9E9E9E),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color.fromRGBO(3, 107, 185, 1),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                keyboardType: TextInputType.streetAddress,
                obscureText: true,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF263238),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  fillColor: const Color(0xFFF2F2F2),
                  filled: true,
                  suffixIcon: const Icon(Icons.lock_outline),
                  suffixIconColor: const Color(0xFF9E9E9E),
                  labelText: "Password",
                  hintText: "Password",
                  labelStyle: GoogleFonts.poppins(
                    fontSize: 13,
                    color: const Color(0xFF9E9E9E),
                  ),
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 13,
                    color: const Color(0xFF9E9E9E),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color.fromRGBO(3, 107, 185, 1),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  checkColor: const Color(0xFF6B5E5E),
                  activeColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  side: MaterialStateBorderSide.resolveWith(
                    (states) => const BorderSide(
                      width: 1.0,
                      color: Color(0xFF6B5E5E),
                    ),
                  ),
                  value: valuefirst,
                  onChanged: (bool? value) {
                    setState(
                      () {
                        valuefirst = value!;
                      },
                    );
                  },
                ),
                Text(
                  "Remember password",
                  style: GoogleFonts.poppins(
                      color: const Color(0xFF6B5E5E),
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'Forget Password',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(3, 107, 185, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: const Color.fromRGBO(3, 107, 185, 1),
                  backgroundColor: const Color.fromRGBO(3, 107, 185, 1),
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => const HomeScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'or connect with',
              style: GoogleFonts.poppins(
                color: const Color.fromRGBO(115, 111, 111, 1),
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 2),
            Image.asset(
              "assets/social.png",
            ),
          ],
        ),
      ),
    );
  }
}
