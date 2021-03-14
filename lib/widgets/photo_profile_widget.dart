import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PhotoProfileWidget extends StatelessWidget {
  const PhotoProfileWidget({@required this.photoUrl, Key key})
      : super(key: key);

  final String photoUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CircleAvatar(
          radius: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(
              photoUrl,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes
                        : null,
                  ),
                );
              },
              fit: BoxFit.cover,
            ),
          )),
    );
  }
}
