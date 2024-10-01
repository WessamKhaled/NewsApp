import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  NewsTile({super.key,required this.articleModel});
  ArticleModel articleModel ;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            articleModel.image ?? 'https://img.freepik.com/free-photo/fake-news-words-surrounded-by-instruments-used-by-media-informing-people_23-2149261952.jpg?t=st=1727734460~exp=1727738060~hmac=822e8275368b505cc9f375e1e1012addd98063b5ca99a0e764ae3988914e1373&w=900',
            height: 250,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          articleModel.header ?? "header is removing",
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.black87, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          articleModel.description ?? "description is removing",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
