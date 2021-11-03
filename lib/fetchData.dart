import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:example/DataModel.dart';

Future<List<DataModel>> fetchData() async {
  final response = await http
      .get(Uri.parse("http://10.0.2.2:8080/api/demo/getCustomTreeData"));

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);

    return (data as List).map((sendData) {
      return DataModel.fromJson(sendData);
    }).toList();
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
