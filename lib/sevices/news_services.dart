import 'package:akhbarak_news_app/models/article_model.dart';
import 'package:dio/dio.dart';

class NewsServices
{
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>>getNews({required String category}) async
  {
    try {
    Response response = await dio.get(
        'https://newsdata.io/api/1/latest?apikey=pub_5065252272a012bc8158faa5b16d103642415&country=eg&language=ar&category=$category',
    );

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> results = jsonData['results'];

    List<ArticleModel> articlesList = [];

    for (var article in results)
    {
      ArticleModel articlesModel = ArticleModel.fromJson(article);
      articlesList.add(articlesModel);
    }
    return articlesList;
  } catch(error)
    {
      return [];
    }
  }
}