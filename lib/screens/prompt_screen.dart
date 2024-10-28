import 'package:flutter/material.dart';

class PromptScreen extends StatefulWidget {
  final VoidCallback ShowHomeScreen;
  const PromptScreen({super.key, required this.ShowHomeScreen});

  @override
  State<PromptScreen> createState() => _PromptScreenState();
}

class _PromptScreenState extends State<PromptScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
