import 'package:flutter/material.dart';
import 'package:information_design_task1/screens/home_page.dart';
import 'package:information_design_task1/screens/update_product.dart';
import 'package:information_design_task1/services/models/update.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => const HomePage(),
        Update_Product_Page.id: (context) => Update_Product_Page(),
      },
      initialRoute: HomePage.id,
      //   HomePage.id: (context) => HomePage(),
      //   Update_Product.id: (context) => Update_Product()
      // },
      // initialRoute: HomePage.id,
      //debugShowCheckedModeBanner: false,
      //home: HomePage());
    );
  }
}
