import 'package:flutter/material.dart';

class UnitContainer extends StatefulWidget {
  const UnitContainer({
    super.key, 
    required this.titleIcon,
    required this.title,
    required this.iconButton,
  });
  
  final Icon titleIcon;
  final Text title;
  final IconButton iconButton;

  @override
  State<UnitContainer> createState() => _UnitContainerState();
}

class _UnitContainerState extends State<UnitContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 60,
        width: 300, 
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: ListTile(
          leading: widget.titleIcon,
          title: widget.title,
          trailing: widget.iconButton,
        ),
      ),
    );
  }
}