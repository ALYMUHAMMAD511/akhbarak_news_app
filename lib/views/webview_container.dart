import 'package:akhbarak_news_app/models/article_model.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatelessWidget {
  WebViewContainer({super.key, required this.articleModel,});

  final ArticleModel articleModel;
  late final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.disabled)
  ..loadRequest(Uri.parse(articleModel.url));

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: WebViewWidget(controller: controller),
    );
  }
}
