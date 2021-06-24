import 'package:fave_images/src/styles/global.dart';
import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer(
      {Key? key, required this.imageTitle, required this.imageSource})
      : super(key: key);

  final String imageTitle;
  final String imageSource;

  @override
  Widget build(BuildContext context) {
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
            Text(
              this.imageTitle,
              style: imageTitleTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
