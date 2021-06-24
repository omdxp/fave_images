import 'package:flutter/cupertino.dart';

class FavoriteImagesNotifier extends ChangeNotifier {
  List _images = [];
  List get images => _images;
  void addImage(String image) {
    _images.add(image);
    notifyListeners();
  }

  void deleteImage(String image) {
    _images.remove(image);
    notifyListeners();
  }
}
