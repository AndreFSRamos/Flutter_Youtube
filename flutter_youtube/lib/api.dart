// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'package:flutter_youtube/Model/video.dart';
import 'package:http/http.dart' as http;

const API_KEY = "AIzaSyC5hBYsdV9t-Vi3MTjU_W8cfk3iCECdkK0";

class Api {
  search(String search) async {
    var request = Uri.parse(
        "https://www.googleapis.com/youtube/v3/search?part=snippet&q=$search&type=video&key=$API_KEY&maxResults=10");
    http.Response reponse = await http.get(request);

    decode(reponse);
  }

  List<Video> decode(http.Response response) {
    if (response.statusCode == 200) {
      var decoded = json.decode(response.body);

      List<Video> videos = decoded["items"].map<Video>(
        (map) {
          return Video.fromjson(map);
        },
      );

      return videos.toList();
    } else {
      throw Exception("ERRO API");
    }
  }
}
