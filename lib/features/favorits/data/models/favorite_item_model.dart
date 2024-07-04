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
  final String discount;
  
   @HiveField(7)
  final String oldPrice;

  FavoriteItemModel({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.description,
    required this.images,
    required this.discount,
    required this.oldPrice,
  });
}
