import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:translate_app/widgets/language_dropdown.dart';

class PromptScreen extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final VoidCallback ShowHomeScreen;
  // ignore: non_constant_identifier_names
  const PromptScreen({super.key, required this.ShowHomeScreen});

  @override
  State<PromptScreen> createState() => _PromptScreenState();
}

class _PromptScreenState extends State<PromptScreen> {
  //Variabled
  String? selectCountryFrom;
  String? selectCountryTo;
  //Function to update the state of the selected language from
  void _handlelanguageChangedFrom(String? newCountry) {
    setState(() {
      selectCountryFrom = newCountry;
    });
  }

  //Function to update the state of the selected language to
  void _handlelanguageChangedTo(String? newCountry) {
    setState(() {
      selectCountryTo = newCountry;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: const Color(0xFF6D1B7B).withOpacity(0.9),
                      width: 0.3),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //this is the text
                  Text(
                    "Text Translation",
                    style: GoogleFonts.poppins(
                        color: const Color(0xFF000000),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                  ),
                  // this is the fields icon
                  const Icon(
                    Icons.text_fields,
                    color: Color(0xFF000000),
                    size: 24.0,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //language dropdown from
                  LanguageDropdown(
                      onLanguageChanged: _handlelanguageChangedFrom),
                  //Swap horiz_icon
                  Icon(
                    Icons.swap_horiz_rounded,
                    color: const Color(0xFF6D1B7B).withOpacity(0.9),
                  ),
                  //language dropdown to
                  LanguageDropdown(onLanguageChanged: _handlelanguageChangedTo),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
