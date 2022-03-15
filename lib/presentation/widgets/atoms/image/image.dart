import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class AppNetworkImage extends StatelessWidget {
  final String url;
  const AppNetworkImage({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageRenderer(
      alt: 'Network Image',
      child: Image.network(url),
      src: url,
    );
  }
}
