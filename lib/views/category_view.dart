import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/categoryCard.dart';

class CategoryView extends StatelessWidget {
  CategoryView({super.key,required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Categorycard(
            category: category.categoryNname!,
          );
        },),);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 120,
          width: 180,

          decoration: BoxDecoration(

            // color: Colors.orange,
            borderRadius: BorderRadius.circular(20),

            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(category.image!)),
          ),
          child: Center(
            child: Text(
              category.categoryNname!,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}




