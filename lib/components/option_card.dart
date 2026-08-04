import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({super.key, required this.onTap, required this.optionText});

  final String optionText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        height: 50,
        width: 340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          child: Center(
            child: Math.tex(
              optionText,
              textStyle: TextStyle(fontSize: 20,
              color: Theme.of(context).colorScheme.onSecondary),
            )
          ),
          onTap: () => onTap()
        ),
      ),
    );
  }
}
