import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:json_test/model/PhotoAlbum.dart';
import 'package:json_test/views/view_models/photo_album_view_model.dart';

class SinglePhotoView extends StatelessWidget {
  SinglePhotoView({Key? key}) : super(key: key);

  PhotoAlbumViewModel photoAlbumViewModel = PhotoAlbumViewModel();
  late List<PhotoAlbum> allAlbumUrl = [];
  @override
  Widget build(BuildContext context) {
    photoAlbumViewModel.getData().then((value) => {allAlbumUrl = value});
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 600.0,
        color: Colors.blue
        // child: CachedNetworkImage(imageUrl: allAlbumUrl.single.url,),
      ),
    );
  }
}