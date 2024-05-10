import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class SingleImageWidget extends StatelessWidget {
  final String imageUrl;
  final double imageHeight;
  final double imageWidth;

  SingleImageWidget({
    Key? key,
    required this.imageUrl,
    required this.imageHeight,
    required this.imageWidth,
  }) : super(key: key);

  final CacheManager cacheManager = CacheManager(
    Config(
      'images_key',
      maxNrOfCacheObjects: 20,
      stalePeriod: Duration(days: 3),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        // 'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
        cacheManager: cacheManager,
        key: UniqueKey(),
        width: imageWidth, //MediaQuery.of(context).size.width,
        height: imageHeight,
        // progressIndicatorBuilder: (Context, url, progress) {
        //   return ColoredBox(
        //     color: Colors.black12,
        //     child: Center(
        //       child: CircularProgressIndicator(
        //         value: progress.progress,
        //       ),
        //     ),
        //   );
        // },
        placeholder: (context, url) => ColoredBox(
          color: Colors.black12,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        fit: BoxFit.cover,
        //maxHeightDiskCache: 200,
        fadeInCurve: Curves.easeInBack,
        fadeInDuration: Duration(milliseconds: 1500),
        errorWidget: (context, url, error) => ColoredBox(
            color: Colors.black12,
            child: Icon(Icons.error, size: 50, color: Colors.red)),
      ),
    );
  }
}
