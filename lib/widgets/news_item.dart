import 'package:akhbarak_news_app/views/webview_container.dart';
import 'package:flutter/material.dart';
import '../models/article_model.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context)
            {
              return WebViewContainer(articleModel: ArticleModel(
                  image: articleModel.image,
                  title: articleModel.title,
                  description: articleModel.description,
                  url: articleModel.url,
              ),
              );
            },
        ),
        );
      },
      child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(
                image: NetworkImage(articleModel.image ?? 'https://images.skynewsarabia.com/images/v1/2024/06/15/1722099/400/225/1-1722099.JPG'),
                fit: BoxFit.fill,
        ),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          articleModel.title,
          textDirection: TextDirection.rtl,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
          const SizedBox(
            height: 7,
    ),
    Text(
      articleModel.description ?? 'This the description of the news title of the day, This the description of the news title of the day, This the description of the news title of the day',
          maxLines: 2,
          textDirection: TextDirection.rtl,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    ),
    );
  }
}
