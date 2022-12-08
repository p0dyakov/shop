import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({
    Key? key,
    required this.icon,
    this.max = 100,
    this.min = 0,
    required this.value,
    required this.onChangeEnd,
    required this.onChanged,
  }) : super(key: key);

  final void Function(double) onChangeEnd;
  final void Function(double) onChanged;
  final IconData icon;
  final double value;
  final double max;
  final double min;

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) => Row(
        children: [
          Icon(
            widget.icon,
            color: Colors.white,
          ),
          Expanded(
            child: Slider(
              value: widget.value,
              max: widget.max,
              min: widget.min,
              activeColor: Colors.white,
              inactiveColor: Colors.white,
              onChangeEnd: widget.onChangeEnd,
              onChanged: widget.onChanged,
            ),
          ),
        ],
      );
}
