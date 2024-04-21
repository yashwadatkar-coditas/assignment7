import 'package:assignment7/features/home/domain/entities/products_entity.dart';

sealed class ProductState {}
class ProductLoadingState extends ProductState{}
class ProductLoadedState extends ProductState{
  final List<ProductEntity> productList;

  ProductLoadedState({required this.productList});
}

class ProductErrorState extends ProductState{}