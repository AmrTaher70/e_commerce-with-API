import 'package:information_design_task1/helper/api.dart';
import 'package:information_design_task1/services/models/product_model.dart';

class GetCategories {
  Future<List<ProductModel>> getCategoriesProduct(
      {required String categoriesName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoriesName');
    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromJSon(data[i]),
      );
    }
    return productList;
  }
}
