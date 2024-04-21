import 'package:assignment7/features/home/data/model/rating_model.dart';
import 'package:assignment7/features/home/domain/entities/products_entity.dart';

class ProductModel extends ProductEntity {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating})
      : super(
            id: id,
            title: title,
            price: price,
            description: description,
            category: category,
            image: image,
            rating: rating);

  factory ProductModel.fromJson(Map<String, dynamic> map) {
    return ProductModel(
        id: map['id'],
        title: map['title'],
        price: map['price'] != null ? map['price'].toDouble() : 0.0,
        description: map['description'],
        category: map['category'],
        image: map['image'],
        rating: RatingModel(
          rate: map['rate'] != null ? map['rate'].toDouble() : 0.0,
          count: map['count'] != null ? int.parse(map['count']) : 0,
        ));
  }
}
