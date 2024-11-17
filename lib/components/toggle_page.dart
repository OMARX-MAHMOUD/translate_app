import 'package:flutter/material.dart';
import 'package:translate_app/screens/home_screen.dart';
import 'package:translate_app/screens/prompt_screen.dart';

class TogglePage extends StatefulWidget {
  const TogglePage({super.key});

  @override
  State<TogglePage> createState() => _TogglePageState();
}

class _TogglePageState extends State<TogglePage> {
  bool _showHomeScreen = true;
  void _togglePage() {
    setState(() {
      _showHomeScreen = !_showHomeScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_showHomeScreen) {
      return HomeScreen(ShowPromptScreen: _togglePage);
    } else {
      return PromptScreen(ShowHomeScreen: _togglePage);
    }
  }
}
