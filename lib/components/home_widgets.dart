import 'package:flutter/material.dart';
import 'package:portfolio/theme/app_textdata.dart';

class HomeWidgets extends StatefulWidget {
  const HomeWidgets({
    super.key,
    required this.title,
    required this.icon,
    required this.value,
  });

  final String title;
  final IconData icon;
  final String value;

  @override
  State<HomeWidgets> createState() => _HomeWidgetsState();
}

class _HomeWidgetsState extends State<HomeWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 10, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(widget.icon, color: Colors.black),
                const SizedBox(width: 10),
                Text(
                  widget.title,
                  style: AppTextdata.titleFonts.copyWith(
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                
              ],
            ),
            const SizedBox(height: 30),
                Text(widget.value, style: AppTextdata.titleFonts.copyWith(
                  color: Theme.of(context).colorScheme.secondary)),
          ],
        ),
      ),
    );
  }
}
