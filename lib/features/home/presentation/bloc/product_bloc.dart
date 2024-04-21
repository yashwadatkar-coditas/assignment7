
import 'dart:async';

import 'package:assignment7/core/dependency_injection_container/dependency_injection_container.dart';
import 'package:assignment7/features/home/domain/usecase/get_usecase.dart';
import 'package:assignment7/features/home/presentation/bloc/product_event.dart';
import 'package:assignment7/features/home/presentation/bloc/product_state.dart';
import 'package:bloc/bloc.dart';
class ProductBloc extends Bloc<ProductEvent,ProductState>
{
  ProductBloc():super(ProductLoadingState())
  {
    on<ProductInitialEvent>(productInitialEvent);
  }

  FutureOr<void> productInitialEvent(ProductInitialEvent event, Emitter emit) async{
    emit(ProductLoadingState());
    final products = await locator<GetUseCase>().getProductUsecase();
    // final category = await locator<GetUseCase>().getCategoryUsecase();
    // print(category);
    emit(ProductLoadedState(productList: products));
  }
}