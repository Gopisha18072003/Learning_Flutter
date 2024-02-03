import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/get_startted_image.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset('assets/get_started_vector.png'),
          const SizedBox(
            height: 36,
          ),
          Text(
            "Welcome",
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 48,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "to our store",
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 48,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "Get your groceries in as fast as one hour",
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontWeight: FontWeight.w100,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 353,
            height: 67,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 83, 177, 117),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
              child: Text(
                "Get Started",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
