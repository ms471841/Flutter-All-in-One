import 'dart:convert';
import 'package:http/http.dart' as http;

String apiKey = "Aeb4YmndeZNs6luoqq8kNjxALX3MlrPXeOgy21T2";
Future fetchData() async {
  String url =
      "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=$apiKey";
  final result = await http.get(Uri.parse(url));

  return json.decode(result.body)['photos'];
}
