import 'package:akhbarak_news_app/models/category_model.dart';
import 'package:akhbarak_news_app/views/category_view.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel,});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context){
              return CategoryView(category: categoryModel.name,);
            },
        ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 90,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(
                categoryModel.image,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              categoryModel.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );

  }
}
