import 'package:api_integ/model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'api_client.g.dart';

//in baseurl specify the api url
@RestApi(baseUrl: "")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('device/')
  Future<List<Devices>> getDevices();
}
