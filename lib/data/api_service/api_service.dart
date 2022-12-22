import 'package:dio/dio.dart';
import '../models/fields_model/fields_model.dart';
import '../models/my_response/my_response.dart';
import 'api_client.dart';

class ApiService extends ApiClient {
  Future<MyResponse> getAllFields() async {
    MyResponse myResponse = MyResponse(error: "");
    try {
      Response response = await dio.get("${dio.options.baseUrl}/dynamic");
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        myResponse.data = (response.data as List)
            .map((e) => FieldsModel.fromJson(e))
            .toList() ??
            [];
      }
    } catch (error) {
      myResponse = MyResponse(
        error: error.toString(),
      );
    }
    return myResponse;
  }
}
