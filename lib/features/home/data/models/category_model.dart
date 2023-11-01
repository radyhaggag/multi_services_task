import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable {
  final String name;
  final String imagePath;

  const CategoryModel({
    required this.name,
    required this.imagePath,
  });

  @override
  List<Object> get props => [name, imagePath];
}
