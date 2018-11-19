import '../langbattle_dart.dart';

class BattleController extends ResourceController {
  @Operation.post()
  Future<Response> fight(@Bind.body() JsonReq jsonReq) async {
    return Response.ok(JsonResp(
        jsonReq.id,
        "${jsonReq.firstName} ${md5.convert(utf8.encode(jsonReq.firstName))}",
        "${jsonReq.lastName} ${md5.convert(utf8.encode(jsonReq.lastName))}",
        "Dart is the best",
        DateTime.now()));
  }
}
