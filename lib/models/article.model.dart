class ArticleModel {
  int id;
  String title;
  String text;
  String image;

  ArticleModel({
    required this.id,
    required this.title,
    required this.text,
    required this.image,
  });

  // Método para converter a instância da classe em um mapa JSON
  Map<String, dynamic> toJSON() {
    return {
      'id': id,
      'title': title,
      'text': text,
      'image': image,
    };
  }

  // Método para criar uma instância da classe a partir de um mapa JSON
  factory ArticleModel.fromJSON(Map<String, dynamic> json) {
    return ArticleModel(
      id: json['id'],
      title: json['title'],
      text: json['text'],
      image: json['image'],
    );
  }
}
