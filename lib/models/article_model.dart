class ArticleModel{
  String header;
  String? description;
  String? image;

  ArticleModel({
     required this.image,
     required this.header,
     required this.description,
  });

 factory ArticleModel.fromJson(json){
    return ArticleModel(image: json["urlToImage"],
        header: json["title"],
        description: json["description"]);
  }
}