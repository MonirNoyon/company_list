

import 'package:company_list/domain/repository/company_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final companyProvider = ChangeNotifierProvider<CompanyRepositories>((ref) => CompanyRepositories());