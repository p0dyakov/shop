import 'package:flutter/material.dart';

class ImageCardPlaceholderWidget extends StatefulWidget {
  const ImageCardPlaceholderWidget({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  State<ImageCardPlaceholderWidget> createState() =>
      _ImageCardPlaceholderWidgetState();
}

class _ImageCardPlaceholderWidgetState extends State<ImageCardPlaceholderWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _gradientPosition;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _gradientPosition = Tween<double>(
      begin: -3,
      end: 10,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    )..addListener(() {
        setState(() {});
      });

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(_gradientPosition.value, 0),
            end: Alignment.centerLeft,
            colors: const [
              Colors.black12,
              Color.fromARGB(45, 0, 0, 0),
              Colors.black12,
            ],
          ),
        ),
        child: widget.child,
      );
}
