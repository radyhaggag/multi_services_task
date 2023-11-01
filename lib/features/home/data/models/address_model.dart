import 'package:equatable/equatable.dart';

class AddressModel extends Equatable {
  final String street;
  final String zipcode;
  final String city;
  final String suite;
  final GeoModel geo;
  const AddressModel({
    required this.street,
    required this.zipcode,
    required this.city,
    required this.suite,
    required this.geo,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) => AddressModel(
        street: json['street'] as String,
        zipcode: json['zipcode'] as String,
        city: json['city'] as String,
        suite: json['suite'] as String,
        geo: GeoModel.fromJson(json['geo'] as Map<String, dynamic>),
      );

  @override
  List<Object> get props {
    return [
      street,
      zipcode,
      city,
      suite,
      geo,
    ];
  }
}

class GeoModel extends Equatable {
  final String lat;
  final String lng;
  const GeoModel({
    required this.lat,
    required this.lng,
  });

  factory GeoModel.fromJson(Map<String, dynamic> json) => GeoModel(
        lat: json['lat'] as String,
        lng: json['lng'] as String,
      );

  @override
  List<Object> get props => [lat, lng];
}
