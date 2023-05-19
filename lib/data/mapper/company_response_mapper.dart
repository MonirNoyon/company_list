

import 'package:company_list/data/model/company_response_model.dart';
import 'package:company_list/domain/entities/company_response_entities.dart';

const EMPTY = "";
const ZERO = 0;
const DOUBLEZERO = 0.00;
const FALSE = false;

extension CompanyResponseMapper on CompanyResponseModel?{
  CompanyResponseRepository toDomain(){
    return CompanyResponseRepository(
        data: this?.data?.map((company) => CompanyData(
            id: company.id ?? ZERO,
          company_name: company.company_name ?? EMPTY,
          email: company.email ?? EMPTY,
          password:  company.password ?? EMPTY,
          phone: company.phone ?? EMPTY
        )).toList() ?? []
    );
  }
}