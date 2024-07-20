import 'package:hive/hive.dart';

part 'cart_item_model.g.dart';

@HiveType(typeId: 1)
class CartItemModel extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String image;

  @HiveField(3)
  final String price;

  @HiveField(4)
  final String description;

  @HiveField(5)
  final List<String>? images;

  @HiveField(6)
  String? oldPrice;

  @HiveField(7)
  String? discount;

  @HiveField(8)
  final int count;

  CartItemModel({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.description,
    this.images,
    this.oldPrice,
    this.discount,
    this.count = 1,
  });

  CartItemModel copyWith({
    int? id,
    String? name,
    String? image,
    String? price,
    String? description,
    List<String>? images,
    String? oldPrice,
    String? discount,
    int? count,
  }) {
    return CartItemModel(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      price: price ?? this.price,
      description: description ?? this.description,
      count: count ?? this.count,
    );
  }
}
