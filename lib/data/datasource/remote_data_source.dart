import 'package:company_list/data/model/add_company_model.dart';
import 'package:company_list/data/model/company_response_model.dart';

import '../../application/api/api.dart';
import '../error/error_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class RemoteApiDataSource {
  Future<Either<Failure, CompanyResponseModel>> getCompanyList(int PageNo);

  Future<Either<Failure, bool>> addCompany(AddCompany company);
}

class RemoteApiImplementer extends RemoteApiDataSource {
  final _dio = Dio();

  @override
  Future<Either<Failure, CompanyResponseModel>> getCompanyList(
      int pageNo) async {
    try {
      var response = await _dio.get(ApiUrl.BASE_URL, queryParameters: {
        "page": pageNo.toString(),
      });
      print(response.data);
      return Right(
          CompanyResponseModel.fromJson(response.data['company_list']));
    } on DioError catch (error) {
      return Left(Failure(
          code: error.response!.statusCode!, message: error.response!.data));
    }
  }

  @override
  Future<Either<Failure, bool>> addCompany(AddCompany company) async {
    try {
      var response = await _dio.post(ApiUrl.BASE_URL, data: company.toJson());
      print(response.data);
      return const Right(true);
    } on DioError catch (error) {
      print(error.response!.statusCode);
      return Left(Failure(
          code: error.response!.statusCode!, message: error.response!.data));
    }
  }
}
