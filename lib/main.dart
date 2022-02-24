import "package:flutter/material.dart";
import 'package:shop_app/presentation/screens/products_overview_screen.dart';
import 'package:shop_app/route_generator.dart';

void main() => runApp(const ShopApp());

class ShopApp extends StatelessWidget {
  const ShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.teal,
          accentColor: Colors.cyan,
          fontFamily: "Lato"),
      initialRoute: ProductsOverviewScreen.routeName,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop App"),
      ),
    );
  }
}
