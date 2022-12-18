import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:shop/src/core/resource/theme/sizes.dart';
import 'package:shop/src/core/utils/show_draggable_bottom_sheet.dart';
import 'package:shop/src/feature/shop/widget/filters.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    this.hint = 'Search',
    this.disabled = false,
    required this.onQueryChanged,
    required this.weightValues,
    required this.priceValues,
    required this.onFiltersChanged,
    required this.onFiltersChangeEnd,
  }) : super(key: key);

  final bool disabled;
  final String hint;
  final Function(String query) onQueryChanged;
  final SfRangeValues weightValues;
  final SfRangeValues priceValues;
  final FiltersChanges onFiltersChanged;
  final FiltersChanges onFiltersChangeEnd;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 36,
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 1,
                  bottom: 1,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFCECECE).withOpacity(0.50),
                  borderRadius: const BorderRadius.all(Radius.circular(18)),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: TextField(
                        readOnly: disabled,
                        onChanged: onQueryChanged,
                        cursorColor: Colors.grey,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 61, 61, 61),
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          hintText: hint,
                          hintStyle:
                              const TextStyle(color: Colors.grey, fontSize: 16),
                          contentPadding: const EdgeInsets.only(bottom: 15),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 5),
            DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xFFCECECE).withOpacity(0.50),
                borderRadius: const BorderRadius.all(Radius.circular(50)),
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(minHeight: 36, minWidth: 36),
                iconSize: 20,
                onPressed: () {
                  Vibrate.feedback(FeedbackType.light);
                  showDraggableBottomSheet(
                    context: context,
                    child: FiltersWidget(
                      onFiltersChanged: onFiltersChanged,
                      weightValues: weightValues,
                      priceValues: priceValues,
                      onFiltersChangeEnd: onFiltersChangeEnd,
                    ),
                  );
                },
                icon: const Icon(
                  Icons.filter_list_alt,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      );
}
