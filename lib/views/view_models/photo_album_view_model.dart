import 'package:json_test/model/PhotoAlbum.dart';
import 'package:json_test/base_view_model.dart';
import 'package:json_test/services/json_service.dart';

import '../../routes/routes_name.dart';
import '../../services/navigation_service.dart';

class PhotoAlbumViewModel extends BaseViewModel {
  final JSONService _jsonService = JSONService.instance;
  JSONService get jsonService => _jsonService;

  Future<List<PhotoAlbum>> getData() async{
    ViewState.busy;
    List<PhotoAlbum> photoAlbum = await jsonService.getPhotoAlbum();
    // NavigationService.instance.navigateTo(SinglephotoViewRoute);
    return photoAlbum;
  }
}