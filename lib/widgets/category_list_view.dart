import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });
  final List<CategoryModel> categors = const [
    CategoryModel(
      image: 'assets/business.avif',
      catgoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      catgoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/general.avif',
      catgoryName: 'General',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      catgoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      catgoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/sports.avif',
      catgoryName: 'Sports',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      catgoryName: 'Technology',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categors.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categors[index],
            );
          }),
    );
  }
}
