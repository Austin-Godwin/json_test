import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:json_test/model/PhotoAlbum.dart';

class JSONService {
  //Creating the instance of JSONService To make the it
  //a singleton so as to use it in our entire app.
  static final JSONService _instance = JSONService();
  static JSONService get instance => _instance;

  //to fetch the Data
  Future<List<PhotoAlbum>> getPhotoAlbum() async {
    http.Response response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/photos"),
    );
    if (response.statusCode == 200) {
      final photoAlbums = jsonDecode(response.body);
      return List<PhotoAlbum>.from(photoAlbums.map((e)=>PhotoAlbum.fromJson(e)));
      // Iterable data = photoAlbums;
      // return data.map<PhotoAlbum>((e) => PhotoAlbum.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load Photo Album');
    }
  }
}
