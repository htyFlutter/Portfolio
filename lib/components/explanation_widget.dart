import 'package:flutter/material.dart';
import 'package:portfolio/theme/app_textdata.dart';

class ExplanationWidget extends StatefulWidget {
  const ExplanationWidget({super.key, required this.explanationText});

  final String explanationText;

  @override
  State<ExplanationWidget> createState() => _ExplanationWidgetState();
}

class _ExplanationWidgetState extends State<ExplanationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 360,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Theme.of(context).colorScheme.tertiary),
      ),
      child: Column(
        children: [
          SizedBox(height: 15),
          Text(
            "かいせつ",
            style: AppTextdata.quizFonts.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              widget.explanationText,
              style: AppTextdata.quizFonts.copyWith(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 20
              ),
            ),
          )
        ],
      ),
    );
  }
}
