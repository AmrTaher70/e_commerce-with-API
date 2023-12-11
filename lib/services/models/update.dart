import 'package:information_design_task1/helper/api.dart';
import 'package:information_design_task1/services/models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct({
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
    required int id,
  }) async {
    print('product id =$id');
    Map<String, dynamic> data =
        await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': desc,
      'category': category,
      'image': image,
    });
    return ProductModel.fromJSon(data);
  }
}
