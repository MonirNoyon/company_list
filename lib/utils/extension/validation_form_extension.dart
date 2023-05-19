
extension Validation on String {
  bool get validPassword => contains(RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z]).{6,}$'));
  bool get isEmpty => contains(RegExp(r'^$'));
  bool get isValidEmail => contains(RegExp(r'^.*@.*\.\D{2,}$'));
  bool get isValidPhone => contains(RegExp(r'^[0-9]{11}$'));
}