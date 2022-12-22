import 'package:dio_mvvm/data/repositories/fields_repository.dart';
import 'package:dio_mvvm/ui/fields_screen.dart';
import 'package:dio_mvvm/view_model/fields_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data/api_service/api_service.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
        create: (context) => FieldsViewModel(
              fieldRepo: FieldRepo(
                apiService: ApiService(),
              ),
            )),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fields App - API',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FieldsScreen());
  }
}
