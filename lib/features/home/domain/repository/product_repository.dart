import 'package:assignment7/features/home/domain/entities/category_entity.dart';
import 'package:assignment7/features/home/domain/entities/products_entity.dart';

abstract class ProductRepository 
{
  Future<List<ProductEntity>> getProducts();
  Future<List<CategoryEntity>> getCategory();
  
}