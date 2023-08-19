import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_man_app/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25,),
            // shop name
            Text(
              'SUSHI MAN',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20,),

            // icon
            Padding(
              padding: const EdgeInsets.all(50),
              child: Image.asset('assets/images/salmon_eggs.png'),
            ),

            const SizedBox(height: 20,),

            // title
            Text(
              'THE TASTE OF JAPANESE FOOD',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 40,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 25,),

            // subtitle
            Text(
              'Feel the taset of the most popular japanese food from anywhare and anytime',
              style: TextStyle(
                color: Colors.grey[200],
                height: 2,
              ),
            ),

            const SizedBox(height: 20,),

            // get start button
            const Button(text: 'Get Started'),

          ],
        ),
      ),

    );
  }
}
