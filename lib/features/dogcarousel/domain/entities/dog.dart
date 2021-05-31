import 'package:equatable/equatable.dart';

class Dog extends Equatable {
  final String name;
  final String url;

  Dog(this.name, this.url);

  @override
  List<Object?> get props => [name, url];
}
