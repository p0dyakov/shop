import 'package:flutter/material.dart';
import 'package:shop/src/core/resources/theme/sizes.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    this.hint = 'Search',
    this.disabled = false,
    required this.onChanged,
  }) : super(key: key);

  final bool disabled;
  final String hint;
  final Function(String query) onChanged;

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
                        onChanged: onChanged,
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
          ],
        ),
      );
}
