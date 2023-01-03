import 'package:equatable/equatable.dart';

class ProductType extends Equatable {
  final String productTypeName;
  final String imageUrl;

  const ProductType({
    required this.imageUrl,
    required this.productTypeName,
  });
  @override
  List<Object?> get props => [productTypeName, imageUrl];
  static List<ProductType> productTypes = [
    const ProductType(
      productTypeName: 'Tea',
      imageUrl: 'assets/icons/tea.png',
    ),
    const ProductType(
      productTypeName: 'Flowers',
      imageUrl: 'assets/icons/flowers.png',
    ),
    const ProductType(
      productTypeName: 'Honey',
      imageUrl: 'assets/icons/honey.png',
    ),
    const ProductType(
      productTypeName: 'Coffee',
      imageUrl: 'assets/icons/coffee.png',
    ),
    const ProductType(
      productTypeName: 'Crops',
      imageUrl: 'assets/icons/food_crops.png',
    )
  ];
}
