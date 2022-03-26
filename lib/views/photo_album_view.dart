import 'package:flutter/material.dart';
import 'package:json_test/model/PhotoAlbum.dart';
import 'package:json_test/views/single_photo_view.dart';
// import 'package:json_test/services/navigation_service.dart';
import 'package:json_test/views/view_models/photo_album_view_model.dart';
import '../widgets/resturant_card.dart';

class PhotoAlbumView extends StatefulWidget {
  const PhotoAlbumView({Key? key}) : super(key: key);

  @override
  State<PhotoAlbumView> createState() => _PhotoAlbumViewState();
}

class _PhotoAlbumViewState extends State<PhotoAlbumView> {
  final photoAlbumViewModel = PhotoAlbumViewModel();
  final _scrollController = ScrollController();
  bool isLoading = false;
  List<PhotoAlbum> allAlbum = [];

  @override
  void initState() {
    super.initState();
    _populatePhotoAlbum();
  }

  _populatePhotoAlbum() async {
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      isLoading = true;
    });

    List<PhotoAlbum> newItems = await photoAlbumViewModel.getData();
    allAlbum.addAll(newItems);
    setState(() {
      isLoading = false;
    });
    // photoAlbumViewModel.getData().then((value) => {
    //       setState(() => {allAlbum = value})
    //     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: isLoading && allAlbum.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : allAlbum.isEmpty
                      ? const Center(
                          child: Text("No Data"),
                        )
                      : GridView.builder(
                          controller: _scrollController,
                          itemCount: allAlbum.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) => RestaurantCard(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SinglePhotoView(
                                  photoUrl: allAlbum[index].url,
                                ),
                              ),
                            ),
                            // photoAlbumViewModel.getData,
                            image: allAlbum[index].thumbnailUrl,
                            // "https://images.unsplash.com/photo-1640622300473-977435c38c04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80",
                          ),
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
