import 'package:fave_images/src/styles/global.dart';
import 'package:fave_images/src/utils/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImageContainer extends ConsumerWidget {
  const ImageContainer(
      {Key? key,
      required this.imageTitle,
      required this.imageSource,
      required this.isFave})
      : super(key: key);

  final String imageTitle;
  final String imageSource;
  final bool isFave;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: Image.asset(
                this.imageSource,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  this.imageTitle,
                  style: imageTitleTextStyle,
                ),
                InkWell(
                  onTap: () {
                    final faveImages = watch(favoriteImagesProvider);
                    final Map<String, dynamic> image = {
                      "title": this.imageTitle,
                      "source": this.imageSource,
                    };
                    isFave
                        ? faveImages.deleteImage(image)
                        : faveImages.addImage(image);
                  },
                  child: Icon(
                    isFave ? Icons.favorite : Icons.favorite_border,
                    color: isFave ? Colors.red : Colors.grey,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
