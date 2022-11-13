import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({
    Key? key,
    required this.onAccept,
    required this.title,
    required this.content,
    required this.acceptText,
  }) : super(key: key);

  final VoidCallback onAccept;
  final String title;
  final String acceptText;
  final String content;

  @override
  Widget build(BuildContext context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          ElevatedButton(
            onPressed: () => AutoRouter.of(context).pop(context),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 15,
                ),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.white),
              elevation: MaterialStateProperty.all(
                0,
              ),
            ),
            child: const Text(
              'CANCEL',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: onAccept,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              elevation: MaterialStateProperty.all(
                0,
              ),
            ),
            child: Text(
              acceptText.toUpperCase(),
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      );
}
