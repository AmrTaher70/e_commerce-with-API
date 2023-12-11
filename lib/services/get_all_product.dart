import 'package:information_design_task1/helper/api.dart';
import 'package:information_design_task1/services/models/product_model.dart';

class AllProductService {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromJSon(data[i]),
      );
    }
    return productList;
  }
}
