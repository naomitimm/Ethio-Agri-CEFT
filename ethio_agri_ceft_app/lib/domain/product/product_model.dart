import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String productName;
  final String imageUrl;
  final double? price;
  const Product(
      {required this.productName, required this.imageUrl, required this.price});

  static List<Product> productType = [
    const Product(
      productName: 'Tea',
      imageUrl: 'assets/icons/tea.png',
      price: null,
    ),
    const Product(
      productName: 'Flowers',
      imageUrl: 'assets/icons/flowers.png',
      price: null,
    ),
    const Product(
      productName: 'Honey',
      imageUrl: 'assets/icons/honey.png',
      price: null,
    ),
    const Product(
      productName: 'Coffee',
      imageUrl: 'assets/icons/coffee.png',
      price: null,
    ),
    const Product(
      productName: 'Crops',
      imageUrl: 'assets/icons/food_crops.png',
      price: null,
    )
  ];

  static List<Product> products = [
    const Product(
      productName: 'Tea',
      imageUrl: 'assets/icons/images.jpeg',
      price: 204,
    ),
    const Product(
      productName: 'Flowers',
      imageUrl: 'assets/icons/images.jpeg',
      price: 204,
    ),
    const Product(
      productName: 'Honey',
      imageUrl: 'assets/icons/images.jpeg',
      price: 204,
    ),
    const Product(
      productName: 'Coffee',
      imageUrl: 'assets/icons/images.jpeg',
      price: 204,
    ),
    const Product(
      productName: 'Crops',
      imageUrl: 'assets/icons/images.jpeg',
      price: 204,
    ),
    const Product(
      productName: 'Crops',
      imageUrl: 'assets/icons/images.jpeg',
      price: 204,
    ),
    const Product(
      productName: 'Crops',
      imageUrl: 'assets/icons/images.jpeg',
      price: 204,
    )
  ];

  @override
  List<Object?> get props => [productName, imageUrl, price];
}
