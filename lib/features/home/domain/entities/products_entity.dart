import 'package:assignment7/features/home/domain/entities/rating_entity.dart';

class ProductEntity {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingEntity rating;

  ProductEntity({required this.id, required this.title, required this.price, required this.description, required this.category, required this.image, required this.rating});
}


