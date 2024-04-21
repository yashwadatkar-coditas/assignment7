import 'package:assignment7/features/home/domain/entities/rating_entity.dart';

class RatingModel extends RatingEntity
{
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count}) : super(rate: rate, count: count);

}