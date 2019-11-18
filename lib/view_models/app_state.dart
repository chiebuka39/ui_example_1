import 'package:flutter/foundation.dart';
import 'package:ui_example_1/models/record.dart';

class AppState extends ChangeNotifier{

  List<Record> _records = [
    Record(name: 'Medical Notes', date: DateTime.now()),
    Record(name: 'Lab Tests', date: DateTime.now().subtract(Duration(days: 1))),
    Record(name: 'Genetic Tests', date:  DateTime.now().subtract(Duration(days: 2))),
    Record(name: 'Allergies', date:  DateTime.now().subtract(Duration(days: 3))),
    Record(name: 'Vaccinations', date:  DateTime.now().subtract(Duration(days: 4))),
    Record(name: 'Xray-reports', date:  DateTime.now().subtract(Duration(days: 4))),
    Record(name: 'Lab Tests', date: DateTime.now().subtract(Duration(days: 10))),
    Record(name: 'Genetic Tests', date:  DateTime.now().subtract(Duration(days: 11))),
    Record(name: 'Allergies', date:  DateTime.now().subtract(Duration(days: 11))),
    Record(name: 'Vaccinations', date:  DateTime.now().subtract(Duration(days: 12))),
    Record(name: 'Xray-reports', date:  DateTime.now().subtract(Duration(days: 13))),
  ];

  List<Record> get records => _records;
}