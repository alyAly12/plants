import 'package:equatable/equatable.dart';

class LinksEntity extends Equatable {
  final String? self;
  final String? plant;
  final String? genus;

  const LinksEntity({required this.self, required this.plant, required this.genus});

  @override
  List<Object?> get props => [self, plant, genus];
}