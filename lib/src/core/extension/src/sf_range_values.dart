import 'package:syncfusion_flutter_sliders/sliders.dart';

extension CustomSfRangeValues on SfRangeValues {
  bool get isInitial => start == 0 && end == 1000;
  bool contains(int other) {
    // TODO: change end and start typing
    final typedStart =
        double == start.runtimeType ? (start as double).toInt() : start as int;
    final typedEnd =
        double == end.runtimeType ? (end as double).toInt() : end as int;

    return typedStart <= other && other <= typedEnd;
  }
}
