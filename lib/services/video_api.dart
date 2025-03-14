import 'package:http/http.dart' as http;
import 'package:projet_orange_valley_flutter/models/video.dart';

getVideosFromApi() async {
  final url = 'https://orangevalleycaa.org/api/videos';
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var json = response.body;
    return videoFromJson(json);
  } else {
    return [];
  }
}
