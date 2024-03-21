import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  const TagWidget(
      {super.key,
      required this.color,
      required this.text,
      required this.textColor});

  final Color color;
  final String text;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2.5),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 4,
                color: color.withOpacity(.25))
          ]),
      child: Text(text, style: TextStyle(color: textColor)),
    );
  }
}
