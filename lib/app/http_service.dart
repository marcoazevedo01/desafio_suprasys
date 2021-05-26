import 'dart:convert';
import 'package:http/http.dart' as http;

final url = '152.67.60.71:8084';
String username = 'recrutamento';
String password = 'recrutamento';

class HttpService {
  static getToken() async {
    var products = [];
      //for(item of tal){
        // Future product = HttpService.get_service('/api/produto/listar/'+item.id);
     //  products.add(product);
    //  }
      
  }

  static Future get_service(path) async {
    var headers = {
      'Authorization':'Basic ' + base64Encode(utf8.encode('$username:$password'))
    };
    var response = await http.get(Uri.http(url, path), headers: headers);
    return jsonDecode(response.body)['result'];
  }

  static Future post_Obj(Object obj, path) async {
    var headers = {"Content-Type": "application/json"};
    var response = await http.post(Uri.http(url, path), headers: headers, body: obj);
    return jsonDecode(response.body);
  }
}
