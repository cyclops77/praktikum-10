import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:async';

class UsersController {
  static Future getData() async {
    var response = await http.get("https://jsonplaceholder.typicode.com/users");
    var res = json.decode(response.body);
    return res;
    if(response.statusCode == 200){
      // print(response.body.toString());
    }
  }
}