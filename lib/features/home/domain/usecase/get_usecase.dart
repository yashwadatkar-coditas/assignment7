import 'package:assignment7/features/home/domain/entities/category_entity.dart';
import 'package:assignment7/features/home/domain/entities/products_entity.dart';
import 'package:assignment7/features/home/domain/repository/product_repository.dart';

class GetUseCase {
  final ProductRepository productRepository;

  GetUseCase({required this.productRepository});
  Future<List<ProductEntity>> getProductUsecase () async{
    return productRepository.getProducts();
  }

  Future<List<CategoryEntity>> getCategoryUsecase () async{
    return productRepository.getCategory();
  }
}