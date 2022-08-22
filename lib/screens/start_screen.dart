import 'package:banking_ui/animations/animations.dart';
import 'package:banking_ui/constants.dart';
import 'package:banking_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlue,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 80.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: FadeAnimation(
                  intervalStart: 0.7,
                  child: SvgPicture.asset(
                    "assets/images/design.svg",
                    height: 350,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FadeAnimation(
                intervalStart: 0.2,
                child: Text(
                  'BANKING APP \nfor your effortless \nmoney management',
                  style: GoogleFonts.getFont(
                    'Righteous',
                    textStyle: const TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FadeAnimation(
                intervalStart: 0.4,
                child: Text(
                  'AT EASE & PEACE',
                  style: GoogleFonts.getFont(
                    'Josefin Sans',
                    textStyle: const TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ScaleAnimation(
                begin: 12.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        PageTransition(
                            child: HomeScreen(),
                            type: PageTransitionType.fromRight),
                        (route) => false);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(
                      20.0,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColor,
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
