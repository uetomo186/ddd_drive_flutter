import 'package:freezed_annotation/freezed_annotation.dart';

class DataTimeConverter implements JsonConverter<DateTime, String> {
  const DataTimeConverter();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json).toLocal();
  }

  @override
  String toJson(DateTime dateTime) {
    return dateTime.toLocal().toString();
  }
}
