import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/article_model.dart';
import '../services/news_service.dart';
import '../widgets/news_list_view.dart';
class NewsListViewBuilder extends StatefulWidget {
  NewsListViewBuilder({super.key,required this.category});
  String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}
class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(
        category: widget.category,
    );
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
              articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Text("oops there was an erroe, tyr later"),
          );
        }
        else{
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}



// cached network image