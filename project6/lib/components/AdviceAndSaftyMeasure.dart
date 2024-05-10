import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project6/widgets/CardBottomBarWidget.dart';
import 'package:project6/widgets/CardTopAccountWidget.dart';
import 'package:project6/widgets/ReadMoreWidget.dart';
import 'package:project6/widgets/SingleImageWidget.dart';

class AdviceAndSaftyMeasure extends StatefulWidget {
  AdviceAndSaftyMeasure({Key? key}) : super(key: key);

  @override
  State<AdviceAndSaftyMeasure> createState() => _AdviceAndSaftyMeasureState();
}

class _AdviceAndSaftyMeasureState extends State<AdviceAndSaftyMeasure> {
  //
  final String image1 =
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80';

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          CardTopAccountWidget(
              primaryText: 'advice and safty measure',
              secondaryText: 'secondary',
              dpUrl: image1),
          ReadMoreWidget(
              readMoreText:
                  'Greyhound divisively hello coldly wonderfully marginally far upon excluding. Greyhound divisively hello coldly wonderfully marginally far upon excluding.Greyhound divisively hello coldly wonderfully marginally far upon excluding.Greyhound divisively hello coldly wonderfully marginally far upon excluding. Greyhound divisively hello coldly wonderfully marginally far upon excluding.Greyhound divisively hello coldly wonderfully marginally far upon excluding.Greyhound divisively hello coldly wonderfully marginally far upon excluding. Greyhound divisively hello coldly wonderfully marginally far upon excluding.Greyhound divisively hello coldly wonderfully marginally far upon excluding.Greyhound divisively hello coldly wonderfully marginally far upon excluding. Greyhound divisively hello coldly wonderfully marginally far upon excluding.Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
              trimLineNumber: 8),
          SingleImageWidget(imageUrl: image1),
          CardBottomBarWidget(),
        ],
      ),
    );
  }
}
