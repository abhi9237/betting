class ApiConstant {
 static ApiConstant? _instance;

  ApiConstant._();

  factory ApiConstant() => _instance ??= ApiConstant._();

  static const String localBaseUrl = 'http/';
}
