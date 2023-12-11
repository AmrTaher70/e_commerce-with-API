import 'package:information_design_task1/helper/api.dart';
import 'package:information_design_task1/services/models/product_model.dart';

class AddProduct {
  Future<ProductModel> addproduct({
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data =
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': desc,
      'category': category,
      'image': image,
    });
    return ProductModel.fromJSon(data);
  }
}
