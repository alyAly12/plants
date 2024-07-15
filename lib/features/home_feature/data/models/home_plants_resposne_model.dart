
import 'package:plants/features/home_feature/data/models/links_entity_model.dart';
import 'package:plants/features/home_feature/domain/entity/home_plants_response_entity.dart';

class HomePlantsResponseModel extends HomePlantsResponseEntity{
  const HomePlantsResponseModel({required super.id, required super.commonName, required super.slug, required super.scientificName, required super.year, required super.bibliography, required super.author, required super.status, required super.rank, required super.familyCommonName, required super.genusId, required super.imageUrl, required super.synonyms, required super.genus, required super.family, required super.links});
  factory HomePlantsResponseModel.fromJson(Map<String, dynamic> json) => HomePlantsResponseModel(
    id: json['id'] as int,
    commonName: json['common_name'] as String,
    slug: json['slug'] as String,
    scientificName: json['scientific_name'] as String,
    year: json['year'] as int,
    bibliography: json['bibliography'] as String,
    author: json['author'] as String,
    status: json['status'] as String,
    rank: json['rank'] as String,
    familyCommonName: json['family_common_name'] as dynamic,
    genusId: json['genus_id'] as int,
    imageUrl: json['image_url'] as String,
    synonyms: json['synonyms'] as List<String>,
    genus: json['genus'] as String,
    family: json['family'] as String,
    links: json['links'] == null
        ? null
        : LinksEntityModel.fromJson(json['links'] as Map<String, dynamic>),
  );
}