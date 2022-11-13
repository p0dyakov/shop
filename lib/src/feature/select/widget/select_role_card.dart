import 'package:flutter/material.dart';

class SelectRoleCardWidget extends StatelessWidget {
  const SelectRoleCardWidget({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Card(
        color: Theme.of(context).primaryColor,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
      );
}
