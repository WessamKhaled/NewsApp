import 'package:flutter/material.dart';
import 'package:news_app/views/NewsListViewBuilder.dart';

class Categorycard extends StatelessWidget {
  Categorycard({super.key,required this.category});
  String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(category,style: TextStyle(color: Colors.white),),
      ),
      // appBar: AppBar(
      //   title: Container(
      //
      //     // height: 50,
      //
      //     color: Colors.grey,
      //     child: Text(category,
      //       style: TextStyle(),
      //     ),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(category: category,),
          ],
        ),
      ),
    );
  }
}
