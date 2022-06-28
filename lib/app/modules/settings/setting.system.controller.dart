import 'package:get/get.dart';

class Product {
  String name;
  bool enable;
  Product({
    this.enable = true,
    this.name,
  });
}

class SettingSystemController extends GetxController {
  List<Product> products = [
    Product(name: "", enable: true),
    Product(name: "Portable Projector", enable: false),
    Product(name: "Bluetooth Speaker", enable: true),
  ].obs;
}
