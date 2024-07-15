
import 'package:plants/features/home_feature/domain/entity/links_entity.dart';

class LinksEntityModel extends LinksEntity{
  const LinksEntityModel({required super.self, required super.plant, required super.genus});
  factory LinksEntityModel.fromJson(Map<String, dynamic> json) => LinksEntityModel(
    self: json['self'] as String?,
    plant: json['plant'] as String?,
    genus: json['genus'] as String?,
  );

}