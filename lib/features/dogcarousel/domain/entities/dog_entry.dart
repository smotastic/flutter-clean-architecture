import 'package:equatable/equatable.dart';

class DogEntry extends Equatable {
  final String name;
  final String url;

  DogEntry(this.name, this.url);

  @override
  List<Object?> get props => [name, url];
}
