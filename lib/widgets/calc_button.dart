import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final Color bgColor;
  final bool big;
  final String text;

  final Function onPressed;

  const CalculatorButton({
    super.key,
    bgColor,
    this.big = false,
    required this.text,
    required this.onPressed,
  }) : bgColor = bgColor ?? const Color(0xFF555454);

  @override
  Widget build(BuildContext context) {
    // Button
    final buttonStyle = TextButton.styleFrom(
      //foregroundColor: Colors.white,
      backgroundColor: bgColor,
      shape: const StadiumBorder(),
    );

    return Container(
      margin: const EdgeInsets.only(bottom: 10, right: 5, left: 5),
      child: FilledButton(
        style: buttonStyle,
        child: SizedBox(
          width: big ? 110 : 25,
          height: 45,
          child: Center(
              child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
        onPressed: () => onPressed(),
      ),
    );
  }
}
