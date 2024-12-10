import 'package:flutter/material.dart';
import 'package:news_app/widgets/list_news_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: CustomScrollView(
            slivers: [
              NewsListViewBulider(
                category: category,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
