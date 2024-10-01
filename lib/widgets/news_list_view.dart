import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

import '../services/news_service.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  NewsListView({super.key,required this.articles});
  List<ArticleModel> articles ;
  @override
  Widget build(BuildContext context) {
    NewsService(Dio()).getNews(
        category: "General",
    );
    return  SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: NewsTile(articleModel: articles[index],),
          );
        },
      ),
    );
  }
}
