import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpService {
  String url = '152.67.60.71:8084';
  String username = 'recrutamento';
  String password = 'recrutamento';
  //List<Product> product = List();
 

  Future get_service(String path) async {
    var headers = {
      'Authorization':
          'Basic ' + base64Encode(utf8.encode('$username:$password'))
    };
    final response = await http.get(Uri.http(url, path), headers: headers);

    return jsonDecode(response.body)['result'];
  }

  Future post_Obj(Object obj, path) async {
    var headers = {"Content-Type": "application/json"};
    var response =
        await http.post(Uri.http(url, path), headers: headers, body: obj);
    return jsonDecode(response.body);
  }
}
