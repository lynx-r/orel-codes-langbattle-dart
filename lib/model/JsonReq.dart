import 'package:langbattle_dart/langbattle_dart.dart';

class JsonReq extends Serializable {
  String id;
  String firstName;
  String lastName;

  @override
  Map<String, dynamic> asMap() {
    return {'id': id, 'first_name': firstName, 'last_namne': lastName};
  }

  @override
  void readFromMap(Map<String, dynamic> requestBody) {
    id = requestBody['id'] as String;
    firstName = requestBody['first_name'] as String;
    lastName = requestBody['last_name'] as String;
  }
}
