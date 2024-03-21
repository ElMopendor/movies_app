import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      required this.text,
      required this.color,
      required this.onPressed,
      required this.textColor,
      this.fixedWidth});

  final String text;
  final Color textColor;
  final Color color;
  final Function() onPressed;
  final double? fixedWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fixedWidth,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 4,
                color: color.withOpacity(.25))
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(5),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(text, style: TextStyle(color: textColor)),
            alignment: Alignment.center,
          ),
        ),
      ),
      alignment: Alignment.center,
    );
  }
}
