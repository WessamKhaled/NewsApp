import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';
import 'package:dio/dio.dart';

import 'services/news_service.dart';
void main() {
  // NewsService(Dio()).getNews();

  runApp(NewsApp());
}


class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
