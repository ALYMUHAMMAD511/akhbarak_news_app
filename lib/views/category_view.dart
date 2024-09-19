import 'package:akhbarak_news_app/widgets/news_list_view_builder.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category,});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(padding: const EdgeInsets.all(16),
        child: CustomScrollView(
          slivers:
          [
            NewsCategoriesListViewBuilder(category: category,),
          ],
        ),
      ),
    );
  }
}
