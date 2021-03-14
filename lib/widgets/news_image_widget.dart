import 'package:flutter/widgets.dart';

class NewsImageWidget extends StatelessWidget {
  const NewsImageWidget({Key key, @required this.imagePath}) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Image.network(imagePath, fit: BoxFit.cover),
    );
  }
}
