import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:store_app/widgets/app_bar_icons.dart';

class SearchTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController textEditingController;
  const SearchTextField(
      {super.key, required this.hintText, required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Theme.of(context).cardColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 1,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        hintText: hintText,
        suffixIcon: AppBarIcon(
          function: () {},
          icon: IconlyLight.search,
        ),
        filled: true,
      ),
    );
  }
}
