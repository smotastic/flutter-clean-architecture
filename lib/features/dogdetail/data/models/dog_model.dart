import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/features/dogdetail/data/models/dog_breed_model.dart';

class DogModel extends Equatable {
  final String id;
  final String url;
  DogBreedModel? breed;

  DogModel(this.id, this.url, this.breed);

  factory DogModel.fromJson(Map<String, dynamic> json) {
    var breedModel;
    if (json['breeds'] != null) {
      final breeds = json['breeds'] as List<dynamic>;
      breedModel = DogBreedModel.fromJson(breeds.first);
    }
    return DogModel(json['id'], json['url'], breedModel ?? null);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    if (this.breed != null) {
      data['breeds'] = [this.breed!.toJson()];
    }
    return data;
  }

  @override
  List<Object?> get props => [this.id, this.url];
}
