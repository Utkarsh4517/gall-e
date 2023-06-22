import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width =  MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Stack(
                children: [
                  SvgPicture.asset(
                    'assets/svg/color-morph.svg',
                    width: MediaQuery.of(context).size.width,
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: width * 0.1),
                        Text(
                          'Frustration is the key to downfall',
                          style: GoogleFonts.chivo(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.05
                          ),
                        ),
                        Text(
                          'and Frustrating someone else is the key to success!!',
                          style: GoogleFonts.chivo(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.03
                          ),
                        ),
                        Text(
                          'SO BECOME A PART OF THIS EPIC COMMUNITY BY CONTRIBUTING TO GALI - AI',
                          style: GoogleFonts.chivo(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.01
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
