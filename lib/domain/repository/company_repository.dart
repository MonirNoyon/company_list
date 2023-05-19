

import 'package:company_list/data/mapper/company_response_mapper.dart';
import 'package:flutter/cupertino.dart';

import '../../data/datasource/remote_data_source.dart';
import '../../data/error/error_response.dart';
import '../entities/company_response_entities.dart';

class CompanyRepositories extends ChangeNotifier{

  final RemoteApiImplementer _apiImplementer = RemoteApiImplementer();

  List<CompanyData> _companyList = [];

  CompanyResponseRepository _companyResponse = CompanyResponseRepository( data: []);

  List<CompanyData> get company => _companyList;

  refreshList(){
    _companyList = [];
    notifyListeners();
  }


  getAllCompanyList(int page) async {
    var response = await _apiImplementer.getCompanyList(page);
    response.fold(
          (left) => Failure(code: left.code, message: left.message),
          (right) => _companyResponse = right.toDomain(),
    );
    _companyList = _companyList + _companyResponse.data;
    notifyListeners();
  }

}