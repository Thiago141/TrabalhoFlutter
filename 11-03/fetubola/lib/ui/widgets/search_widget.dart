import 'package:fetubola/models/news.dart';
import 'package:fetubola/utils/app_style.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final List<News> news;
  SearchWidget({super.key, required this.news});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          TextField(
            controller: searchController,
            cursorColor: AppStyle.primaryColor,
            decoration: InputDecoration(
              labelText: 'Pesquisar',
              labelStyle: TextStyle(color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.green),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.red),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                final filteredNews = news.where((newsItem) {
                  if (newsItem.title.toLowerCase().contains(
                        searchController.text.toLowerCase(),
                      ) ||
                      newsItem.content.toLowerCase().contains(
                        searchController.text.toLowerCase(),
                      )) {
                    debugPrint('Encontrou: ${newsItem.title}');
                    return true;
                  }
                  return false;
                }).toList();
              },
              icon: const Icon(Icons.search),
              color: AppStyle.onPrimaryColor,
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(AppStyle.primaryColor),
                minimumSize: WidgetStatePropertyAll(const Size(40, 40)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
