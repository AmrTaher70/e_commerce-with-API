import 'package:information_design_task1/helper/api.dart';

class AllCategories {
  Future<List<dynamic>> allCategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
