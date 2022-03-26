import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
// import 'package:json_test/model/PhotoAlbum.dart';
// import 'package:json_test/views/view_models/photo_album_view_model.dart';

class SinglePhotoView extends StatelessWidget {
  final String photoUrl;
  const SinglePhotoView({Key? key, required this.photoUrl}) : super(key: key);

  // PhotoAlbumViewModel photoAlbumViewModel = PhotoAlbumViewModel();
  // late List<PhotoAlbum> allAlbumUrl = [];
  @override
  Widget build(BuildContext context) {
    // final albumUrl =
    //     photoAlbumViewModel.getData().then((value) => {allAlbumUrl = value});
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 600.0,
        color: Colors.blue,
        child: CachedNetworkImage(
          imageUrl: photoUrl,
              // "https://images.unsplash.com/photo-1640622300473-977435c38c04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80",
          fit: BoxFit.cover,
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        // albumUrl[]),
      ),
    );
  }
}
