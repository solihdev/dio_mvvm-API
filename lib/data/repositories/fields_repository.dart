import '../api_service/api_service.dart';
import '../models/my_response/my_response.dart';

class FieldRepo {
  FieldRepo({
    required this.apiService,
  });

  ApiService apiService;

  Future<MyResponse> getAllFields() => apiService.getAllFields();
}
