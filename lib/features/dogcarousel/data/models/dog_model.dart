import 'package:equatable/equatable.dart';

class DogModel extends Equatable {
  final String name;
  final String url;

  DogModel(this.name, this.url);

  @override
  List<Object?> get props => [name, url];
}
