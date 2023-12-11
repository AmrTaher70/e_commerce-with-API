import 'package:flutter/material.dart';
import 'package:information_design_task1/screens/update_product.dart';
import 'package:information_design_task1/services/models/product_model.dart';
import 'package:information_design_task1/services/models/update.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  CustomCard({
    required this.product,
    Key? key,
  }) : super(key: key);
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 50,
              color: Colors.grey.withOpacity(.1),
              spreadRadius: 20,
              offset: const Offset(10, 10),
            )
          ]),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Update_Product_Page.id,
                  arguments: product);
            },
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      product.title.substring(0, 6),
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      // padding: EdgeInsets.symmetric(horizontal: 0),
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r'$' '${product.price.toString()}',
                            style: const TextStyle(
                                fontSize: 16, color: Colors.black),
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 32,
          bottom: 80,
          child: Image.network(
            product.image,
            height: 100,
            width: 100,
          ),
        )
      ],
    );
  }
}
