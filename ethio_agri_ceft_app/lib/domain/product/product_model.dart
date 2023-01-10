import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String productName;
  final String imageUrl;
  final double? price;
  final String ingridients;
  final String description;
  const Product(
      {required this.productName,
      required this.imageUrl,
      required this.price,
      required this.description,
      required this.ingridients});

  static List<Product> products = [
    const Product(
        productName: 'Tea',
        imageUrl: 'assets/pics/tea.jpeg',
        price: 204,
        ingridients: "",
        description: ""),
    const Product(
        productName: 'Flowers',
        imageUrl: 'assets/pics/flowers.jpg',
        price: 204,
        ingridients: "",
        description: ""),
    const Product(
        productName: 'Honey',
        imageUrl: 'assets/pics/honey.jpg',
        price: 204,
        ingridients: "",
        description: ""),
    const Product(
        productName: 'Coffee',
        imageUrl: 'assets/pics/coffee.jpg',
        price: 204,
        ingridients: "",
        description: ""),
    const Product(
        productName: 'Crops',
        imageUrl: 'assets/pics/crop1.jpg',
        price: 204,
        ingridients: "",
        description: ""),
    const Product(
        productName: 'Crops',
        imageUrl: 'assets/pics/crop2.jpg',
        price: 204,
        ingridients: "",
        description: ""),
  ];

  @override
  List<Object?> get props => [productName, imageUrl, price];
}
