import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import 'category_view.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});
  List<CategoryModel>categories = [
    // CategoryModel(categoryNname: "", image: "assets/images/GeneralNews.jpg"),
    CategoryModel(categoryNname: "Education", image: "assets/images/Education.jpg"),
    CategoryModel(categoryNname: "Busines", image: "assets/images/busines.webp"),
    CategoryModel(categoryNname: "Entertaiment", image: "assets/images/entertaiment.avif"),
    CategoryModel(categoryNname: "Health", image: "assets/images/health.avif"),
    CategoryModel(categoryNname: "Science", image: "assets/images/science.avif"),
    CategoryModel(categoryNname: "Technology", image: "assets/images/technology.jpeg"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryView(
              category:categories[index]
          );
        },

      ),
    );
  }
}






