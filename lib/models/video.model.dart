import 'dart:convert';

class VideoModel {
  int id;
  String name;
  String description;
  String url;
  String url2;
  String? image;
  int premium;
  int order;

  VideoModel({
    required this.id,
    required this.name,
    required this.description,
    required this.url,
    required this.url2,
    required this.image,
    required this.premium,
    required this.order,
  });

  // Método para converter a instância da classe em um mapa JSON
  Map<String, dynamic> toJSON() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'url': url,
      'url2': url2,
      'image': image,
      'premium': premium,
      'order': order,
    };
  }

  // Método para criar uma instância da classe a partir de um mapa JSON
  factory VideoModel.fromJSON(Map<String, dynamic> json) {
    return VideoModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      url: json['url'],
      url2: json['url2'],
      image: json['image'],
      premium: json['premium'],
      order: json['order'],
    );
  }
}
