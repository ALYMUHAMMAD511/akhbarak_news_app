import 'package:akhbarak_news_app/models/article_model.dart';
import 'package:akhbarak_news_app/sevices/news_services.dart';
import 'package:akhbarak_news_app/widgets/news_list_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsCategoriesListViewBuilder extends StatefulWidget
{
  const NewsCategoriesListViewBuilder({super.key, required this.category});

  @override
  State<NewsCategoriesListViewBuilder> createState() => _NewsCategoriesListViewBuilderState();
  final String category;
}

class _NewsCategoriesListViewBuilderState extends State<NewsCategoriesListViewBuilder>
{
  // ignore: prefer_typing_uninitialized_variables
  var future;
  // ignore: prefer_typing_uninitialized_variables

  @override
  void initState()
  {
    super.initState();
    future = NewsServices(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(results: snapshot.data!);
          }
          else if (snapshot.hasError) {
            return const Text(
              'OOPS, THERE WAS AN ERROR',
            );
          }
          else {
            return const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              ),
            );
          }
        }
    );
  }
}
