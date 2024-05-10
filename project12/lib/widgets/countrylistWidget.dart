import 'package:flutter/material.dart';
import 'package:project12/models/countrylist.dart';
import 'package:project12/service/apiService.dart';

class CountryListWidget extends StatefulWidget {
  final String api;
  CountryListWidget({required this.api});

  @override
  State<CountryListWidget> createState() => _CountryListWidgetState();
}

class _CountryListWidgetState extends State<CountryListWidget> {
  List<CountryListResponse>? countryListResponse;
  // late Response countryListResponse;
  @override
  void initState() {
    super.initState();
    fetchCoutries(widget.api!).then(
      (value) => setState(
        (() {
          countryListResponse = value; //as List<Response>?;
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height, //double.infinity,
            child: countryListResponse == null
                ? const Center(
                    child: Center(child: CircularProgressIndicator()),
                  )
                : ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: countryListResponse!.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (() {
                            //TODO
                          }),
                          child: Text(
                            countryListResponse![index].name!,
                            //style: widget.themeData.textTheme.bodyText1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      );
                    }),
          ),
        )
      ],
    );
  }
}
