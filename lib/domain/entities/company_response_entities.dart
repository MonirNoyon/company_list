
class CompanyResponseRepository {
  List<CompanyData> data;

  CompanyResponseRepository({required this.data});

}

class CompanyData {
  int id;
  String company_name;
  String email;
  String password;
  String phone;

  CompanyData(
      {
        required this.id,
        required this.company_name,
        required this.email,
        required this.password,
        required this.phone});

}