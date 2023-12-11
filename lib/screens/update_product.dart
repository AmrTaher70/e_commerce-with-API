import 'package:flutter/material.dart';
import 'package:information_design_task1/services/models/product_model.dart';
import 'package:information_design_task1/services/models/update.dart';
import 'package:information_design_task1/widgets/custom_elv_button.dart';
import 'package:information_design_task1/widgets/custom_text_felid.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// ignore: must_be_immutable
class Update_Product_Page extends StatefulWidget {
  const Update_Product_Page({super.key});
  static String id = 'update_product';

  @override
  State<Update_Product_Page> createState() => _Update_Product_PageState();
}

class _Update_Product_PageState extends State<Update_Product_Page> {
  String? productName, image, description;

  String? price;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(
              'Product',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 100,
              ),
              TextFiledTask(
                onChanged: (data) {
                  productName = data;
                },
                hintTitle: 'Product Name',
                controller: TextEditingController(),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFiledTask(
                onChanged: (data) {
                  description = data;
                },
                hintTitle: 'Description',
                controller: TextEditingController(),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFiledTask(
                onChanged: (data) {
                  price = (data);
                },
                inputType: TextInputType.number,
                hintTitle: 'Price',
                controller: TextEditingController(),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFiledTask(
                onChanged: (data) {
                  image = data;
                },
                hintTitle: 'Image',
                controller: TextEditingController(),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevCustomButton(
                text: 'Update',
                onPressed: () async {
                  isLoading = true;
                  setState(() {});
                  try {
                    await updateProduct(product);
                    print('success');
                  } catch (e) {
                    print(e.toString());
                  }
                  isLoading = false;
                  setState(() {});
                },
                backgroundColor: Colors.blue,
              )
            ]),
          )),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    UpdateProduct().updateProduct(
        id: product.id,
        title: productName == null ? product.title : productName!,
        price: price == null ? product.price.toString() : price!,
        desc: description == null ? product.description : description!,
        image: image == null ? product.image : image!,
        category: product.category);
  }
}
