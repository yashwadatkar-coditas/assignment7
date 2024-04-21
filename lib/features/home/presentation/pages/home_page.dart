import 'package:assignment7/features/home/presentation/bloc/product_bloc.dart';
import 'package:assignment7/features/home/presentation/bloc/product_event.dart';
import 'package:assignment7/features/home/presentation/bloc/product_state.dart';
import 'package:assignment7/features/home/presentation/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key }) ;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          bottom: TabBar(
            tabs: [
              Tab(text: "All"),
              Tab(text: "electronics"),
              Tab(text: "jewelery"),
              Tab(text: "men's clothing"),
              Tab(text: "women's clothing"),
            ],
          ),
        ),
        body: BlocBuilder<ProductBloc, ProductState>(
         
          builder: (context, state) {
            return TabBarView(
              children: [
                buildTabView(context, state,'' ),
                buildTabView(context, state, "electronics"),
                buildTabView(context, state, "jewelery"),
                buildTabView(context, state, "men's clothing"),
                buildTabView(context, state, "women's clothing"),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget buildTabView(BuildContext context, ProductState state, String category) {
    switch (state.runtimeType) {
      case ProductLoadingState:
        return Center(child: CircularProgressIndicator());
      case ProductLoadedState:
      final productList;
       final loadedState = state as ProductLoadedState;
      if(category == '')
      {
        productList = loadedState.productList;
      }
      else {
       
         productList = loadedState.productList
            .where((product) => product.category == category)
            .toList();}
        return ListView.builder(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return CustomCard(index: index, productList: productList);
          },
        );
      case ProductErrorState:
        return Center(child: Text('Some error occurred'));
      default:
        return Center(child: Text('Data not found'));
    }
  }
}
