import 'package:hive/hive.dart';

part 'favorite_item_model.g.dart';

@HiveType(typeId: 0)
class FavoriteItemModel extends HiveObject {
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
  final List<String> images;

  @HiveField(6)
  String? oldPrice;
  @HiveField(7)
  String? discount;

  FavoriteItemModel({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.description,
    required this.images,
    this.oldPrice,
    this.discount,
  });
}
