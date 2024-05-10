import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:project7/screens/NewCarSaleDetailScreen.dart';

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
    'https://media.istockphoto.com/photos/generic-modern-sports-car-in-concrete-garage-picture-id1307086563?b=1&k=20&m=1307086563&s=170667a&w=0&h=sPx3GPlfoe6NT_ZO4XyAT5eP1QbbUf5rZlSrqQmX2Ig=',
    'https://media.istockphoto.com/photos/silver-roadster-sports-car-moving-at-high-speed-along-racetrack-at-picture-id1354209384?b=1&k=20&m=1354209384&s=170667a&w=0&h=S87gR4CQ4OrwaqxL-YiZ2-mFsKf1MzWOUG9qsC_N5-4=',
    'https://images.unsplash.com/photo-1541348263662-e068662d82af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3BvcnRzJTIwY2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1562911791-c7a97b729ec5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c3BvcnRzJTIwY2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1579508542697-bb18e7d9aeaa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c3BvcnRzJTIwY2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1542838106-38bae66f985f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8c3BvcnRzJTIwY2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1578656415093-e7e19e5e132b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8c3BvcnRzJTIwY2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1502161254066-6c74afbf07aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHNwb3J0cyUyMGNhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1628519592419-bf288f08cef5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHNwb3J0cyUyMGNhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://media.istockphoto.com/photos/old-retro-car-interior-picture-id1415136730?b=1&k=20&m=1415136730&s=170667a&w=0&h=WSxPhA4KbQFiXkESxLuoiuHRVOJ-Pd-tSTbbgDxP0xI=',
    'https://images.unsplash.com/photo-1647185172571-07eabdaed1a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bG9ycnklMjBpbWFnZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1580287192846-ebb89d7e348e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bG9ycnklMjBpbWFnZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://media.istockphoto.com/photos/futuristic-technology-concept-autonomous-semi-truck-with-cargo-at-picture-id1351045479?b=1&k=20&m=1351045479&s=170667a&w=0&h=xD9LYM27TPsB1RiDXL9w4dTsYUCXYz8TN5jVT50BBQw=',
    'https://media.istockphoto.com/photos/blue-bonnet-big-rig-semi-truck-with-black-grille-transporting-cargo-picture-id1320745755?b=1&k=20&m=1320745755&s=170667a&w=0&h=iCUX581EcfkWHw4pO1OgsHOL9IaU5fCARowhBloG_Qo=',
    'https://media.istockphoto.com/photos/isolated-eighteen-wheel-semi-truck-with-blue-cab-on-white-picture-id155447302?b=1&k=20&m=155447302&s=170667a&w=0&h=yVLuXvfa_Eer6Yw9OWtCtNgdEb8ObpnE7XAur_Gm6AA=',
    'https://media.istockphoto.com/photos/the-truck-is-driving-along-the-night-road-in-the-fog-rear-red-lights-picture-id1337388194?b=1&k=20&m=1337388194&s=170667a&w=0&h=Zx_U6AZ61rFhNC9L2rDp1n_hhH0QkALI-k2C-hvECQg=',
    'https://images.unsplash.com/photo-1559416523-140ddc3d238c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dG95b3RhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1626072557464-90403d788e8d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHRveW90YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1551171128-48d69c7c6510?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHRveW90YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1619682817481-e994891cd1f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHRveW90YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1564435147504-a8734d5fff6e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHRveW90YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://media.istockphoto.com/photos/desert-safari-picture-id157168569?b=1&k=20&m=157168569&s=170667a&w=0&h=gR8A59lbfLOczcQxnpa8KOCBtNuXtjqvXH9_i48DrVo=',
    'https://images.unsplash.com/photo-1624951352908-3579b7df9c05?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fHRveW90YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1525160354320-d8e92641c563?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bW90b3JiaWtlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1502744688674-c619d1586c9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bW90b3JiaWtlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1591637333184-19aa84b3e01f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1vdG9yYmlrZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1544620347-c4fd4a3d5957?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1597920467799-ec8bee99f6eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJ1c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1532939163844-547f958e91b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YnVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1464219789935-c2d9d9aba644?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJ1c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1561361513-2d000a50f0dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGJ1c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1620629228754-6ed8b519bd0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGJ1c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://media.istockphoto.com/photos/electric-bus-with-charging-station-picture-id1334432107?b=1&k=20&m=1334432107&s=170667a&w=0&h=xzTPQlgHwZOVXpPtKcmK65a-b5bjt12R0Ale10QvZ6s=',
    'https://media.istockphoto.com/photos/coach-bus-picture-id540124958?b=1&k=20&m=540124958&s=170667a&w=0&h=-cmvnjGO8MD-JGItYBoxsekoRlj4Wy93obx6YH5UWBU=',
    'https://media.istockphoto.com/photos/excavator-at-a-construction-site-picture-id119468403?b=1&k=20&m=119468403&s=170667a&w=0&h=QHTW5g6OwWHM06DAEGzxorVbk5KHPqf-BwFNivJxw-I=',
    'https://media.istockphoto.com/photos/digger-picture-id177343687?b=1&k=20&m=177343687&s=170667a&w=0&h=cPZrBtBjolJJJRMXCffHWoj0LlcjsWh8Xks6yoTjyfk=',
    'https://media.istockphoto.com/photos/yellow-bulldozer-picture-id93073353?b=1&k=20&m=93073353&s=170667a&w=0&h=gYvFZ9xu0MqgbbdwCdyEh1OUHQRMQyGnhM2cHqbr1wY=',
    'https://media.istockphoto.com/photos/yellow-excavator-stop-during-the-sunset-picture-id489218805?b=1&k=20&m=489218805&s=170667a&w=0&h=ULwoXELz52CxTRc7WVe6p7GruUD4KdsB7fp9sduwxQ8=',
    'https://images.unsplash.com/photo-1618346976725-71ee4a1ecc89?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dHJhY3RvcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1614977646033-448adc696eb6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dHJhY3RvcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1614977645540-7abd88ba8e56?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dHJhY3RvcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1595569099963-77bf7706643a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHRyYWN0b3JzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1621165679152-b06e534f5760?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHRyYWN0b3JzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1598715559054-bd95409cc2a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHRyYWN0b3JzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1523848309072-c199db53f137?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHRyYWN0b3JzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1602951617452-189d1e014f34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHRyYWN0b3JzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1584186118422-895ef18c418d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHRyYWN0b3JzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1601584115197-04ecc0da31d7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dHJ1Y2tzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1591419478162-a4dd21b7ec0a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dHJ1Y2tzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1602750766769-8db8d49cc369?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHRydWNrc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://media.istockphoto.com/photos/front-and-back-views-of-a-white-delivery-van-picture-id1347476797?b=1&k=20&m=1347476797&s=170667a&w=0&h=AfS-s2tidsy2FsYGsy8JGL3nFmt7X6KF0WPy6xps8OI=',
    'https://images.unsplash.com/photo-1530675706010-bc677ce30ab6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bmlzc2FufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1584920735791-be9a8eba8baa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG5pc3NhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1623863517273-2639d0a32599?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fG5pc3NhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1587935365464-4df8d142077a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG5pc3NhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1618091171668-e1c3cf1ffce2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG5pc3NhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1618782530124-fa5ddd7358df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG5pc3NhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    //end of car images
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
          aspectRatio: 1.0,
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
