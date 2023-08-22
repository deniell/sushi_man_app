import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_man_app/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

            const SizedBox(height: 25,),

            // icon
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 25, 50, 25),
              child: Image.asset('assets/images/salmon_eggs.png'),
            ),

            const SizedBox(height: 25,),

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

            const SizedBox(height: 25,),

            // get start button
            Button(
              text: 'Get Started',
              onTap: () {
                // go to menu page
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ),
      ),

    );
  }
}
