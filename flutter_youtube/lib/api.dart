import 'package:http/http.dart' as http;

const API_KEY = "AIzaSyC5hBYsdV9t-Vi3MTjU_W8cfk3iCECdkK0";

class Api {
  search(String search) async {
    http.Response reponse = await get();
  }
}
