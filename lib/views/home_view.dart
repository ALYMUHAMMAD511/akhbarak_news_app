import 'package:akhbarak_news_app/widgets/categories_list.dart';
import 'package:akhbarak_news_app/widgets/news_list_view_builder.dart';
import 'package:flutter/material.dart';


class HomeView extends StatelessWidget
{
  const HomeView({super.key, required this.category});

    final String category;

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                'Hub',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.all(16),
              child:
              CustomScrollView(
                physics: BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                     child: CategoriesList(),
                 ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 32,
                    ),
                  ),
                  NewsCategoriesListViewBuilder(category: 'top'),
                ],
              ),
          ),
        ),
    );
  }
}