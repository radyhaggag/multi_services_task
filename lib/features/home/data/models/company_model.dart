import 'package:equatable/equatable.dart';

class CompanyModel extends Equatable {
  final String name;
  final String catchPhrase;
  final String bs;
  const CompanyModel({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) => CompanyModel(
        name: json['name'] as String,
        catchPhrase: json['catchPhrase'] as String,
        bs: json['bs'] as String,
      );

  @override
  List<Object> get props => [name, catchPhrase, bs];
}
