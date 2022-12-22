import 'package:dio_mvvm/data/repositories/fields_repository.dart';
import 'package:flutter/foundation.dart';

import '../data/models/fields_model/fields_model.dart';
import '../data/models/my_response/my_response.dart';

class FieldsViewModel extends ChangeNotifier {
  FieldsViewModel({required FieldRepo fieldRepo}) {
    // fetchAllFields();
    _fieldRepo = fieldRepo;
  }

  late FieldRepo _fieldRepo;

  String errorForUI = "";

  bool isLoading = false;

  List<FieldsModel> incomeTypes=[];

  fetchAllFields() async {
    MyResponse myResponse = await _fieldRepo.getAllFields();

    if (myResponse.error.isEmpty) {
      incomeTypes = myResponse.data as List<FieldsModel>;
    } else {
      errorForUI = myResponse.error;
    }
    notifyListeners();
  }
  notify(bool value) {
    isLoading = value;
    notifyListeners();
  }
}