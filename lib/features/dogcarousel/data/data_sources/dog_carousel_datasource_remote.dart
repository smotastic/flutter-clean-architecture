import 'package:flutter_clean_architecture/features/dogcarousel/data/models/dog_model.dart';

import 'package:flutter_clean_architecture/core/domain/failure.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'dog_carousel_datasource.dart';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

@LazySingleton(as: DogCarouselDatasourceRemote)
class DogCarouselDatasourceRemoteRest extends DogCarouselDatasourceRemote {
  @override
  Future<Either<Failure, DogModel>> fetchRandomDog() async {
    var url = Uri.https('api.thedogapi.com', '/v1/images/search');

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body) as List<dynamic>;
      return Right(DogModel(jsonResponse[0]['id'], jsonResponse[0]['url']));
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return Right(DogModel(
        "Shiba Inu", "https://cdn2.thedogapi.com/images/tYnqlqNkz.jpg"));
  }
}
