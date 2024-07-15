import 'package:equatable/equatable.dart';
import 'package:plants/features/home_feature/domain/entity/links_entity.dart';


class HomePlantsResponseEntity extends Equatable {
  final int id;
  final String commonName;
  final String slug;
  final String scientificName;
  final int year;
  final String bibliography;
  final String author;
  final String status;
  final String rank;
  final dynamic familyCommonName;
  final int genusId;
  final String imageUrl;
  final List<String> synonyms;
  final String genus;
  final String family;
  final LinksEntity? links;

  const HomePlantsResponseEntity(
      {required this.id,
      required this.commonName,
      required this.slug,
      required this.scientificName,
      required this.year,
      required this.bibliography,
      required this.author,
      required this.status,
      required this.rank,
      required this.familyCommonName,
      required this.genusId,
      required this.imageUrl,
      required this.synonyms,
      required this.genus,
      required this.family,
      required this.links});

  @override
  List<Object?> get props {
    return [
      id,
      commonName,
      slug,
      scientificName,
      year,
      bibliography,
      author,
      status,
      rank,
      familyCommonName,
      genusId,
      imageUrl,
      synonyms,
      genus,
      family,
      links,
    ];
  }
}
