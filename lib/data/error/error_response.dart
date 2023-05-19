class Failure {
  int code; // 200 or 400
  String message; // error or success

  Failure({required this.code, required this.message});
}