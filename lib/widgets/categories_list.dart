import 'package:flutter/material.dart';
import '../models/category_model.dart';
import 'category_item.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(
      name: 'Business',
      image: 'assets/business.avif',
    ),
    CategoryModel(
      name: 'Entertainment',
      image: 'assets/entertaiment.avif',
    ),
    CategoryModel(
      name: 'Health',
      image: 'assets/health.avif',
    ),
    CategoryModel(
      name: 'Science',
      image: 'assets/science.avif',
    ),
    CategoryModel(
      name: 'Sports',
      image: 'assets/sports.avif',
    ),
    CategoryModel(
      name: 'Technology',
      image: 'assets/technology.jpeg',
    ),
    CategoryModel(
      name: 'Top',
      image: 'assets/general.avif',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) => CategoryItem(categoryModel: categories[index]),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
