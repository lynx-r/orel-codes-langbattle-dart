import 'package:langbattle_dart/langbattle_dart.dart';

class JsonResp extends Serializable {
  JsonResp(this.id, this.firstName, this.lastName, this.say, this.currentTime);

  String id;
  String firstName;
  String lastName;
  String say;
  DateTime currentTime;

  @override
  Map<String, dynamic> asMap() {
    return {
      'id': id,
      'first_name': firstName,
      'last_namne': lastName,
      'say': say,
      'current_time': DateFormat('yyyy-MM-dd HH:mm:ss').format(currentTime)
    };
  }

  @override
  void readFromMap(Map<String, dynamic> requestBody) {
    id = requestBody['id'] as String;
    firstName = requestBody['first_name'] as String;
    lastName = requestBody['last_name'] as String;
    say = requestBody['say'] as String;
    currentTime = DateTime.parse(requestBody['say'] as String);
  }
}
