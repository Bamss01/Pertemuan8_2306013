import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post_model.dart';

// class service
class PostService {
  // membuat static method
  static Future<List<PostModel>> getPosts() async {
    // inisialisasi variable url
    final response = await http.get(
      // memanggil link API
      Uri.parse('https://jsonplaceholder.typicode.com/posts')
    );
    // pengkondisian jika berhasil
    if (response.statusCode == 200) {
      // membuat variable penampung untuk melakukan 
      // decode (convert) data dati JSON ke Dart
      List data = jsonDecode(response.body);
      return data.map((e) => PostModel.formJson(e)).toList();
    } 
    // pengkondisian jika gagal
    else {
      throw Exception('Gagal mengambil data');
    }
  }
}