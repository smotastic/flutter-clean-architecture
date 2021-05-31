import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dog_model.g.dart';

@JsonSerializable()
class DogModel extends Equatable {
  @JsonKey(name: 'id')
  final String name;
  final String url;

  DogModel(this.name, this.url);

  @override
  List<Object?> get props => [name, url];

  factory DogModel.fromJson(Map<String, dynamic> json) =>
      _$DogModelFromJson(json);

  Map<String, dynamic> toJson() => _$DogModelToJson(this);
}
