import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

typedef FiltersChanges = Function(
  SfRangeValues weightValues,
  SfRangeValues priceValues,
);

class FiltersWidget extends StatelessWidget {
  const FiltersWidget({
    Key? key,
    required this.weightValues,
    required this.priceValues,
    required this.onFiltersChanged,
    required this.onFiltersChangeEnd,
  }) : super(key: key);

  final SfRangeValues weightValues;
  final SfRangeValues priceValues;
  final FiltersChanges onFiltersChanged;
  final FiltersChanges onFiltersChangeEnd;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 90, child: Text('Weight (gm)')),
              Expanded(
                child: SfRangeSlider(
                  activeColor: const Color.fromARGB(255, 94, 94, 94),
                  inactiveColor: const Color.fromARGB(255, 202, 202, 202),
                  enableTooltip: true,
                  stepSize: 1,
                  min: 0,
                  max: 1000,
                  onChanged: (SfRangeValues values) =>
                      onFiltersChanged(values, priceValues),
                  onChangeEnd: (SfRangeValues values) =>
                      onFiltersChangeEnd(values, priceValues),
                  values: weightValues,
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 90, child: Text('Price (₽)')),
              Expanded(
                child: SfRangeSlider(
                  activeColor: const Color.fromARGB(255, 94, 94, 94),
                  inactiveColor: const Color.fromARGB(255, 202, 202, 202),
                  enableTooltip: true,
                  stepSize: 1,
                  min: 0,
                  max: 1000,
                  onChanged: (SfRangeValues values) =>
                      onFiltersChanged(weightValues, values),
                  onChangeEnd: (SfRangeValues values) =>
                      onFiltersChangeEnd(weightValues, values),
                  values: priceValues,
                ),
              ),
            ],
          ),
        ],
      );
}
