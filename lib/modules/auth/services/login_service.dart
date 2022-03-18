import 'package:get/get_connect.dart';

class LoginService extends GetConnect {
  // Get request
  Future<Response> getUser(int id) => get('http://youapi/users/$id');
  
  GetSocket userMessages() {
    return socket('https://yourapi/users/socket');
  }
}