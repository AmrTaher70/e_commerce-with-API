import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:information_design_task1/services/get_all_product.dart';
import 'package:information_design_task1/services/models/product_model.dart';
import 'package:information_design_task1/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartShopping,
                color: Colors.black,
              ),
            )
          ],
          title: const Text('New Trend', style: TextStyle(color: Colors.black)),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 65),
            child: FutureBuilder<List<ProductModel>>(
              future: AllProductService().getAllProduct(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<ProductModel> products = snapshot.data!;
                  return GridView.builder(
                      itemCount: products.length,
                      clipBehavior: Clip.none,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 100,
                      ),
                      itemBuilder: (context, index) {
                        return CustomCard(
                          product: products[index],
                        );
                      });
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            )));
  }
}
