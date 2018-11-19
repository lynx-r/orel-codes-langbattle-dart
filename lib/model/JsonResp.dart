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
    // TODO: implement readFromMap
  }
}
