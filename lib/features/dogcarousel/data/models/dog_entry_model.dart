import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dog_entry_model.g.dart';

@JsonSerializable()
class DogEntryModel extends Equatable {
  @JsonKey(name: 'id')
  final String name;
  final String url;

  DogEntryModel(this.name, this.url);

  @override
  List<Object?> get props => [name, url];

  factory DogEntryModel.fromJson(Map<String, dynamic> json) =>
      _$DogEntryModelFromJson(json);

  Map<String, dynamic> toJson() => _$DogEntryModelToJson(this);
}
