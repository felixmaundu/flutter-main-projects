import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:project6/screens/NewCarSaleDetailScreen.dart';

class CarouselWidget extends StatelessWidget {
  // final String onTap;

  // CarouselWidget({
  //   super.key,
  //   required this.onTap,
  // });

// Clear cache
  // void clearCache() {
  //   imageCache?.clear();
  //   imageCache?.clearLiveImages();

  //   cacheManager.emptyCache();
  //   setState(() {});
  // }
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
        'https://media.istockphoto.com/photos/professional-mechanic-working-on-the-engine-of-the-car-in-the-garage-picture-id1347150429?b=1&k=20&m=1347150429&s=170667a&w=0&h=RKG23YFnuqu8RtEYHBX7xmaJR6uOtb8c0xYCTboMYUw=',
    'https://media.istockphoto.com/photos/cars-on-production-line-in-factory-picture-id1320950393?b=1&k=20&m=1320950393&s=170667a&w=0&h=JH6sLTsrvPZh5YrTrSSFIMvcG9sT3lpXqFYfI-RUjJw=',
    'https://media.istockphoto.com/photos/hot-air-balloons-flying-over-the-botan-canyon-in-turkey-picture-id1297349747?b=1&k=20&m=1297349747&s=170667a&w=0&h=oH31fJty_4xWl_JQ4OIQWZKP8C6ji9Mz7L4XmEnbqRU=',
    'https://media.istockphoto.com/photos/little-kids-schoolchildren-pupils-students-running-hurrying-to-the-picture-id1338737959?b=1&k=20&m=1338737959&s=170667a&w=0&h=Wj4IEck0-UYQquyOfnORvotapuarDJ4fABPDm-9ITV0=',
    'https://media.istockphoto.com/photos/paperless-workplace-idea-esigning-electronic-signature-document-an-picture-id1349390515?k=20&m=1349390515&s=612x612&w=0&h=Q1eF3EPRjhyxT7WXFxXnq0GkhyqjusV42dyBUIgY4_A=',
    'https://media.istockphoto.com/photos/man-using-digital-tablet-online-connect-to-internet-banking-currency-picture-id1334591614?k=20&m=1334591614&s=612x612&w=0&h=XjrrRgWpKJBlQH-ExDxogYYkAKEfkHSIspbibeB1M1Q=',
    'https://media.istockphoto.com/photos/asian-business-man-on-mobile-phone-conversation-picture-id499959906?b=1&k=20&m=499959906&s=170667a&w=0&h=6KYXkb3ideeVq1nv0XlkrOwW3JtRr7Ln69EymmUbglM=',
    'https://media.istockphoto.com/photos/woman-using-smartphone-buy-cryptocurrency-at-a-coffee-shop-blockchain-picture-id1368207267?k=20&m=1368207267&s=612x612&w=0&h=fC7ARp_17-gptc_U_DqMnqqEJf_TcVVqTJvKe-x_c8w=',
    'https://media.istockphoto.com/photos/river-yahoo-falls-kentucky-picture-id1417731549?b=1&k=20&m=1417731549&s=170667a&w=0&h=U4wETO3AneJrM8iyLzAAu7ltFQrDsdtUfXmlQuTORbI='
        'https://media.istockphoto.com/photos/happy-woman-in-winter-outfit-shouting-into-megaphone-picture-id498747614?k=20&m=498747614&s=612x612&w=0&h=bKb7PBJLZvOaRQmkuH7BTswQALljSiqv_d9Q2mfh5fg=',
    'https://media.istockphoto.com/photos/an-asian-chinese-young-beautiful-woman-celebrating-her-birthday-with-picture-id1225489420?b=1&k=20&m=1225489420&s=170667a&w=0&h=sti4pvhOB4g2R3Lvljj2Ck3Zz5nzhM-2Ujlp4ErDGkI=',
  ];

  final CacheManager cacheManager = CacheManager(
    Config(
      'images_key',
      maxNrOfCacheObjects: 20,
      stalePeriod: Duration(days: 3),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewCarSaleDetailScreen(),
          ),
        );
      },
      onLongPress: () {},
      child: CarouselSlider(
        // itemCount: images.length,
        options: CarouselOptions(
          // aspectRatio: 16 / 9,
          aspectRatio: 1.5,
          viewportFraction: 1.0,
          height: 300,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          enableInfiniteScroll: false,
          autoPlay: false,
        ),
        items: imgList
            .map((e) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CachedNetworkImage(
                        imageUrl: e,
                        cacheManager: cacheManager,
                        key: UniqueKey(),
                        width: MediaQuery.of(context).size.width,
                        height: 300,

                        placeholder: (context, url) => ColoredBox(
                          color: Colors.black12,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        fit: BoxFit.cover,
                        //maxHeightDiskCache: 200,
                        fadeInCurve: Curves.easeInBack,
                        fadeInDuration: Duration(milliseconds: 1000),
                        errorWidget: (context, url, error) => ColoredBox(
                            color: Colors.black12,
                            child:
                                Icon(Icons.error, size: 50, color: Colors.red)),
                      ),
                    ),
                  ],
                )))
            .toList(),
      ),
    );
  }
}
