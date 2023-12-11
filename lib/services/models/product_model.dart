class ProductModel {
  final dynamic id;
  final String title;
  final double price;
  final String description;
  final String image;
  final String category;
  final RatingModel rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.category,
      required this.rating});

  factory ProductModel.fromJSon(jsonData) {
    return ProductModel(
      id: jsonData["id"],
      title: jsonData["title"],
      // Handle both int and double for price
      price: (jsonData["price"] is int)
          ? jsonData["price"].toDouble()
          : jsonData["price"],
      description: jsonData["description"],
      image: jsonData["image"],
      category: jsonData["category"],
      rating: RatingModel.fromJson(jsonData["rating"]),
    );
  }
}

class RatingModel {
  final double rate;
  final int count;
  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
        rate: (jsonData["rate"] is int)
            ? jsonData["rate"].toDouble()
            : jsonData["rate"],
        count: jsonData['count']);
  }
}
