import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../services/news_service.dart';
import '../widgets/news_list_view.dart';
import '../widgets/news_tile.dart';
import 'NewsListViewBuilder.dart';
import 'categories_list_view.dart';
import 'category_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.orange),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            NewsListViewBuilder(category: "General",),
          ],
        ),
      ),
    );
  }
}
