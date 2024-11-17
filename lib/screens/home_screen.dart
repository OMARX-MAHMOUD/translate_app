import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:translate_app/widgets/country_rectangle.dart';

class HomeScreen extends StatefulWidget {
  // ignore: non_constant_identifier_names
  const HomeScreen({super.key, required this.ShowPromptScreen});
  // ignore: non_constant_identifier_names
  final VoidCallback ShowPromptScreen;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      // Container for all contents
      body: Container(
        decoration: const BoxDecoration(
            // Background image here
            image: DecorationImage(
                image: AssetImage('assets/images/worldmap.png'),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Expanded(
                child: Center(child: CountryRectangles()),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          style: GoogleFonts.poppins(height: 1.6),
                          children: <InlineSpan>[
                            const TextSpan(
                              text: 'Translate',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF000000),
                              ),
                            ),
                            TextSpan(
                              text: ' Every \n',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF6D1B7B).withOpacity(0.3),
                              ),
                            ),
                            const TextSpan(
                              text: 'Type Word \n',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF000000),
                              ),
                            ),
                            const WidgetSpan(
                                child: SizedBox(
                              height: 35,
                            )),
                            const TextSpan(
                              text: 'Help you communication in \n',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF000000),
                              ),
                            ),
                            const TextSpan(
                              text: 'Different languages',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: GestureDetector(
                        onTap: widget.ShowPromptScreen,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: const Color(0xFF6D1B7B).withOpacity(0.5),
                              shape: BoxShape.circle),
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            padding: const EdgeInsets.all(2.0),
                            decoration: const BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                shape: BoxShape.circle),
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward,
                                color: const Color(0xFF6D1B7B).withOpacity(0.5),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
