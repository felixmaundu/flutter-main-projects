class CountryList {
  // Parameters? parameters;
  int? results;
  Paging? paging;
  List<CountryListResponse>? response;

  CountryList(
      { //this.parameters,
      this.results,
      this.paging,
      this.response});

  CountryList.fromJson(Map<String, dynamic> json) {
    // parameters = json['parameters'] != null
    //     ? Parameters.fromJson(json['parameters'])
    //     : null;
    results = json['results'];
    paging = json['paging'] != null ? Paging.fromJson(json['paging']) : null;
    if (json['response'] != null) {
      response = <CountryListResponse>[];
      json['response'].forEach((v) {
        response!.add(CountryListResponse.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    // if (parameters != null) {
    //   data['parameters'] = parameters!.toJson();
    // }
    data['results'] = results;
    if (paging != null) {
      data['paging'] = paging!.toJson();
    }
    if (response != null) {
      data['response'] = response!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Parameters {
  String? name;

  Parameters({this.name});

  Parameters.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}

class Paging {
  int? current;
  int? total;

  Paging({this.current, this.total});

  Paging.fromJson(Map<String, dynamic> json) {
    current = json['current'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['current'] = current;
    data['total'] = total;
    return data;
  }
}

class CountryListResponse {
  String? name;
  String? code;
  String? flag;

  CountryListResponse({this.name, this.code, this.flag});

  CountryListResponse.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    flag = json['flag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['code'] = code;
    data['flag'] = flag;
    return data;
  }
}
