import 'package:flutter/cupertino.dart';

class FavoriteImagesNotifier extends ChangeNotifier {
  List _images = [];
  List get images => _images;
  void addImage(Map<String, dynamic> image) {
    _images.add(image);
    notifyListeners();
  }

  void deleteImage(Map<String, dynamic> image) {
    _images.remove(image);
    notifyListeners();
  }
}
