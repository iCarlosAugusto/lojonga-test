class ArticleModel {
  String id;
  String text;
  String title;
  String imageUrl;
  String author_name;
  String url;
  int premium;
  int order;
  String image;

  ArticleModel({
    required this.id,
    required this.text,
    required this.title,
    required this.imageUrl,
    required this.author_name,
    required this.url,
    required this.premium,
    required this.order,
    required this.image
  });
}