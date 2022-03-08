import 'package:flutter/material.dart';
import 'package:json_test/routes/routes_name.dart';
import 'package:json_test/views/photo_album_view.dart';
import 'package:json_test/views/single_photo_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case PhotoAlbumViewRoute:
        return MaterialPageRoute(builder: (context) => const PhotoAlbumView());
      case SinglephotoViewRoute:
        return MaterialPageRoute(builder: (context) => SinglePhotoView());
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold());
    }
  }
}