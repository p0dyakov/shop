import 'package:flutter/material.dart';

class EditorTextButtonWidget extends StatelessWidget {
  const EditorTextButtonWidget({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          backgroundColor:
              MaterialStateProperty.all(const Color.fromARGB(0, 255, 255, 255)),
          elevation: MaterialStateProperty.all(
            0,
          ),
        ),
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            fontSize: 14,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.w500,
          ),
        ),
      );
}
