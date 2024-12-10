import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:translate_app/widgets/custombuttom.dart';
import 'package:translate_app/widgets/language_dropdown.dart';
import 'package:translate_app/widgets/translate_from.dart';
import 'package:translate_app/widgets/translate_to.dart';

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
  TextEditingController controller = TextEditingController();
  final String _treanslateText = "";

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 16.0),
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
                    LanguageDropdown(
                        onLanguageChanged: _handlelanguageChangedTo),
                  ],
                ),
              ),
              // Padding around the selected language from
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10.0),

                // The selected language from in a row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: GoogleFonts.poppins(
                          height: 1.6,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Translate From ',
                            style: GoogleFonts.poppins(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w300,
                              color: const Color(0xFF000000),
                            ),
                          ),
                          if (selectCountryFrom != null)
                            TextSpan(
                              text: '$selectCountryFrom',
                              style: GoogleFonts.poppins(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF000000),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Padding around the container for translate from
              Padding(
                padding: const EdgeInsets.only(top: 20.0),

                // Container for translate from
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 223.0,
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: const Color(0xFFFFFFFF),
                    border: Border.all(
                      color: const Color(0xFF6D1B7B).withOpacity(0.8),
                      width: 0.2,
                    ),
                  ),

                  // Translatefrom class here
                  child: TranslateFrom(controller: controller),
                ),
              ),
              // Padding around the selected language to
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10.0),

                // The selected language from in a row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: GoogleFonts.poppins(
                          height: 1.6,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Translate To ',
                            style: GoogleFonts.poppins(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w300,
                              color: const Color(0xFF000000),
                            ),
                          ),
                          if (selectCountryTo != null)
                            TextSpan(
                              text: '$selectCountryTo',
                              style: GoogleFonts.poppins(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF000000),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Padding around the container for translate To
              Padding(
                padding: const EdgeInsets.only(top: 20.0),

                // Container for translate to
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 223.0,
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: const Color(0xFFFFFFFF),
                    border: Border.all(
                      color: const Color(0xFF6D1B7B).withOpacity(0.8),
                      width: 0.2,
                    ),
                  ),
                  child: TranslateTo(
                    translatedText: _treanslateText,
                  ),
                ),
              ),
              CustomButtom(text: 'Sumbit')
            ],
          ),
        ),
      ),
    );
  }
}
