import 'dart:convert';

import 'package:flutter_web_poc/domain/repositories/http/http_client_repository.dart';
import 'package:http/http.dart' as http;

class HttpClientRepositoryImpl implements HttpClientRepository {
  @override
  Future get(String url) async {
    final response = await http.get(Uri.parse(url));
    return jsonDecode(response.body);
  }
}
