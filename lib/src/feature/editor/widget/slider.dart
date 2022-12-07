import 'package:bitmap/bitmap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/src/core/resource/theme/sizes.dart';
import 'package:photo_editor/src/feature/editor/bloc/editor_bloc.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({
    Key? key,
    required this.operation,
    required this.icon,
    this.max = 100,
    this.min = 0,
  }) : super(key: key);

  final BitmapOperation Function(double) operation;
  final IconData icon;
  final double max;
  final double min;

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentSliderValue = 100;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Row(
          children: [
            Icon(
              widget.icon,
              color: Colors.white,
            ),
            Expanded(
              child: Slider(
                value: _currentSliderValue,
                max: widget.max,
                min: widget.min,
                activeColor: Colors.white,
                inactiveColor: Colors.white,
                label: _currentSliderValue.round().toString(),
                onChangeEnd: (double value) =>
                    BlocProvider.of<EditorBloc>(context).add(
                  EditorEvent.changeImageSettings(
                    widget.operation(value),
                  ),
                ),
                onChanged: (double value) => setState(
                  () {
                    _currentSliderValue = value;
                  },
                ),
              ),
            ),
          ],
        ),
      );
}
