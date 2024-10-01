import 'package:dio/dio.dart';
import '../models/article_model.dart';
class NewsService{
  NewsService(this.dio);
  final Dio dio;
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/everything?apiKey=c6db48b209174e888991fb7fc9153877&q=$category");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
        // print(jsonData["totalResults"]);
      } print(jsonData["totalResults"]);
      return articlesList;
    }catch(e){
      return [];
    }
  }
}
