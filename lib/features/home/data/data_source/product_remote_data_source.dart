import 'dart:convert';

import 'package:assignment7/features/home/data/model/product_model.dart';
import 'package:http/http.dart' as http;


class ProductRemoteDataSource {
    Future<List<ProductModel>> getProductDataFromRemote() async {
    try {
 
 
      final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));

      if (response.statusCode == 200) {
        print(response.body);
        final List<dynamic> data = json.decode(response.body);
        return data.map((e) => ProductModel.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      // Handle timeout or other errors
      throw Exception('Timeout or other error occurred: $e');
    }
    }}