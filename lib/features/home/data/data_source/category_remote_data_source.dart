import 'dart:convert';

import 'package:assignment7/features/home/data/model/category_model.dart';
import 'package:http/http.dart'as http;

class CategoryRemoteDataSource {
   Future<List<CategoryModel>> getProductDataFromRemote() async {
    try {
 
 
      final response = await http.get(Uri.parse('https://fakestoreapi.com/products/categories'));

      if (response.statusCode == 200) {
        print(response.body);
        final List<dynamic> data = json.decode(response.body);
        return data.map((e) => CategoryModel.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      // Handle timeout or other errors
      throw Exception('Timeout or other error occurred: $e');
    }
}}