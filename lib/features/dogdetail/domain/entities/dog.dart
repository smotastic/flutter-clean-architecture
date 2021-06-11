import 'package:flutter_clean_architecture/features/dogdetail/domain/entities/dog_breed.dart';

class Dog {
  final String id;
  final String url;
  DogBreed? breed;

  Dog(this.id, this.url, this.breed);
}
