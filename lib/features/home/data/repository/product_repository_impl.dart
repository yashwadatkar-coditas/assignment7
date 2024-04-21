import 'package:assignment7/core/dependency_injection_container/dependency_injection_container.dart';
import 'package:assignment7/features/home/data/data_source/category_remote_data_source.dart';
import 'package:assignment7/features/home/data/data_source/product_remote_data_source.dart';
import 'package:assignment7/features/home/data/model/category_model.dart';
import 'package:assignment7/features/home/data/model/product_model.dart';
import 'package:assignment7/features/home/domain/entities/category_entity.dart';
import 'package:assignment7/features/home/domain/entities/products_entity.dart';
import 'package:assignment7/features/home/domain/repository/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository
{
  

  @override
  Future<List<CategoryEntity>> getCategory() async{

   final List<CategoryModel> category = await locator<CategoryRemoteDataSource>().getProductDataFromRemote();
   return category;
  }

  @override
  Future<List<ProductEntity>> getProducts() async {
   final List<ProductModel> product = await locator<ProductRemoteDataSource>().getProductDataFromRemote();
   return product;
  }
  
}