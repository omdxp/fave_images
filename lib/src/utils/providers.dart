import 'package:fave_images/src/utils/notifiers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoriteImagesProvider = Provider((ref) => FavoriteImagesNotifier());
