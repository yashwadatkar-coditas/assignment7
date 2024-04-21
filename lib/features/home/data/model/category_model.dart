

import 'package:assignment7/features/home/domain/entities/category_entity.dart';

class CategoryModel extends CategoryEntity
{
   final String  category;

  CategoryModel({required this.category}) : super(category: category);

  factory CategoryModel.fromJson(List<String> str)
  {
    return CategoryModel(category: str[0]);
  }
}