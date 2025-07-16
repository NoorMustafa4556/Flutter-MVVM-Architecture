class MovieListModel {
  List<Movies>? movies;

  MovieListModel({this.movies});

  MovieListModel.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      movies = <Movies>[];
      json['products'].forEach((v) {
        movies!.add(Movies.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (movies != null) {
      data['products'] = movies!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Movies {
  num? id;
  String? title;
  String? description;
  num? price;
  String? thumbnail;

  Movies({this.id, this.title, this.description, this.price, this.thumbnail});

  Movies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['price'] = price;
    data['thumbnail'] = thumbnail;
    return data;
  }
}
