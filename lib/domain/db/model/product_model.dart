import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class ProductModel {
  @HiveField(0)
  String id;
  @HiveField(1)
  String count;
  @HiveField(2)
  String name;
  @HiveField(3)
  String price;

  ProductModel(
      {required this.id,
      required this.count,
      required this.name,
      required this.price});
}
