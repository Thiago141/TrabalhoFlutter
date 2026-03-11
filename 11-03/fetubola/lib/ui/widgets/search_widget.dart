import 'package:fetubola/utils/app_style.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: AppStyle.screenPadding,
      padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
      child: Row(
        children: [
          Expanded(child: TextField()),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: AppStyle.onPrimaryColor,
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(AppStyle.primaryColor),
              minimumSize: WidgetStatePropertyAll(const Size(40, 40)),
            ),
          ),
        ],
      ),
    );
  }
}
