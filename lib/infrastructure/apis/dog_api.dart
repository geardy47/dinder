import 'package:dartz/dartz.dart';
import 'package:dinder/application/models/breed_image_list_model/breed_image_list_model.dart';
import 'package:dio/dio.dart';

import '../../application/app/app.locator.dart';
import '../../application/app/constants/common.dart';
import '../../application/models/breed_list_model/breed_list_model.dart';
import '../../application/models/response_json_model/response_json_model.dart';
import 'dio_exception.dart';

class DogApi {
  final _dio = locator<Dio>();

  Future<Either<ResponseJsonModel, BreedListModel>> getBreedList() async {
    try {
      final res = await _dio.get('${Common.baseUrl}s/list/all');

      return Right(
        BreedListModel.fromJson(res.data),
      );
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();

      return Left(
        ResponseJsonModel(
          code: e.response?.statusCode,
          message: errorMessage,
        ),
      );
    }
  }

  Future<Either<ResponseJsonModel, BreedImageListModel>> getBreedImageList(
    String breed,
  ) async {
    try {
      final res = await _dio.get('${Common.baseUrl}/$breed/images/random/10');

      return Right(
        BreedImageListModel.fromJson(res.data),
      );
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();

      return Left(
        ResponseJsonModel(
          code: e.response?.statusCode,
          message: errorMessage,
        ),
      );
    }
  }
}
