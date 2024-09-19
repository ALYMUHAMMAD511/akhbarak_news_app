import 'package:akhbarak_news_app/models/article_model.dart';
import 'package:akhbarak_news_app/widgets/news_item.dart';
import 'package:flutter/material.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.results});

  final List<ArticleModel> results;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          childCount: results.length,
              (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Column(children:
            [
              NewsItem(articleModel: results[index],
              ),
              const Divider(
                height: 25,
                thickness: 1,
                color: Colors.grey,
              ),
            ],)
          ),
      ),
    );
  }
}
