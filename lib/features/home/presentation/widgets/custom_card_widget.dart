import 'package:assignment7/features/home/domain/entities/products_entity.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final int index;
  final List<ProductEntity> productList;
  const CustomCard({super.key, required this.index, required this.productList});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
             backgroundImage: NetworkImage(productList[index].image),
              maxRadius: 25,
            ),
            SizedBox(width: 20),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 120,
                        child: Text(
                          productList[index].title,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(width: 50),
                      SizedBox(
                        width: 80,
                        child: Text('\$ ${productList[index].price.toString()}',
                           style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 80,
                    child: Text(
                      productList[index].category,
                       style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(

                    width: 300,
                    child: Text(productList[index].description,maxLines: 3,),
                  ),
                  const SizedBox(height: 10),
            
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}