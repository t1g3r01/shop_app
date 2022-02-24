import 'package:flutter/material.dart';
import 'package:shop_app/presentation/screens/product_details.dart';
import 'package:shop_app/presentation/screens/products_overview_screen.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case ProductsOverviewScreen.routeName:
        return MaterialPageRoute(builder: (_) => ProductsOverviewScreen());
      case ProductDetails.routName:
        return MaterialPageRoute(builder: (_) => ProductDetails());
      default:
        return MaterialPageRoute(builder: (_) => ProductsOverviewScreen());
    }
  }
}
