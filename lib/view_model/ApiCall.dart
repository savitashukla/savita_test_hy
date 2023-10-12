import 'dart:convert';

import 'package:http/http.dart' as http;


class ApiCall
{
  Future<Map<String, dynamic>?> getWeatherData() async {

    final response = await http.get(Uri.parse("https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&daily=weathercode,temperature_2m_max,temperature_2m_min,sunrise,sunset&timezone=auto&past_days=3"),
        headers: {'Content-Type': 'application/json'});
    print("response body ${response.body}");
    if (response.statusCode == 200) {
      return jsonDecode(response.body);

    } else {
      return null;

    }
  }
}