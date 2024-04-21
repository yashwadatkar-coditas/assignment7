import 'package:assignment7/features/home/data/data_source/category_remote_data_source.dart';
import 'package:assignment7/features/home/data/data_source/product_remote_data_source.dart';
import 'package:assignment7/features/home/data/repository/product_repository_impl.dart';

import 'package:assignment7/features/home/domain/usecase/get_usecase.dart';
import 'package:assignment7/features/home/presentation/bloc/product_state.dart';
import 'package:get_it/get_it.dart';


final locator = GetIt.instance;
void setUp ()
{
  locator.registerSingleton<ProductRemoteDataSource>(ProductRemoteDataSource());
  locator.registerSingleton<CategoryRemoteDataSource>(CategoryRemoteDataSource());
  locator.registerSingleton<ProductRepositoryImpl>(ProductRepositoryImpl());
  locator.registerSingleton<GetUseCase>(GetUseCase(productRepository: locator<ProductRepositoryImpl>()));
  

}