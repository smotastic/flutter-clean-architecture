import 'package:flutter_clean_architecture/core/data/data_sources/dog_api_helper.dart';
import 'package:flutter_clean_architecture/core/domain/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/features/dogdetail/data/data_sources/dog_detail_ds_remote.dart';
import 'package:flutter_clean_architecture/features/dogdetail/data/models/dog_model.dart';
import 'package:flutter_clean_architecture/features/dogdetail/domain/dog_detail_failures.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

@LazySingleton(as: DogDetailDataSourceRemote)
class DogDetailDataSourceRemoteRest extends DogDetailDataSourceRemote {
  @override
  Future<Either<Failure, DogModel>> loadById(String id) async {
    var url = DogApi.url('/v1/images/$id');

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      return Right(DogModel.fromJson(jsonResponse));
    } else {
      return Left(DogDetailFailures.REMOTE_CALL_FAILED);
    }
  }
}
