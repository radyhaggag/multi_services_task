import 'package:equatable/equatable.dart';

import 'address_model.dart';
import 'company_model.dart';

class UserModel extends Equatable {
  final String name;
  final int id;
  final String username;
  final String phone;
  final String website;
  final AddressModel address;
  final CompanyModel company;
  const UserModel({
    required this.name,
    required this.id,
    required this.username,
    required this.phone,
    required this.website,
    required this.address,
    required this.company,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      id: map['id'] as int,
      username: map['username'] as String,
      phone: map['phone'] as String,
      website: map['website'] as String,
      address: AddressModel.fromJson(map['address'] as Map<String, dynamic>),
      company: CompanyModel.fromJson(map['company'] as Map<String, dynamic>),
    );
  }

  @override
  List<Object> get props {
    return [
      name,
      id,
      username,
      phone,
      website,
      address,
      company,
    ];
  }
}
