import 'package:flutter/material.dart';
import 'package:project12/service/endpoints.dart';
import 'package:project12/widgets/countrylistWidget.dart';

class CountriesPage extends StatelessWidget {
  const CountriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Text('data'),
            CountryListWidget(
              api: Endpoints.coutriesUrl(),
            )
          ],
        ),
      ),
    );
  }
}
