import 'package:dio/dio.dart';

class HttpRequest {

  static final dio = Dio(
    BaseOptions(
      baseUrl: "https://applojong.com/api",
      headers: {
        "Authorization": "Bearer O7Kw5E2embxod5YtL1h1YsGNN7FFN8wIxPYMg6J9zFjE6Th9oDssEsFLVhxf" 
      }
    )
  );
}