// class Standing {
// 	Parameters? parameters;
// 	int? results;
// 	Paging? paging;
// 	List<Response>? response;

// 	Standing({this.parameters, this.results, this.paging, this.response});

// 	Standing.fromJson(Map<String, dynamic> json) {
// 		parameters = json['parameters'] != null ? new Parameters.fromJson(json['parameters']) : null;
// 		results = json['results'];
// 		paging = json['paging'] != null ? new Paging.fromJson(json['paging']) : null;
// 		if (json['response'] != null) {
// 			response = <Response>[];
// 			json['response'].forEach((v) { response!.add(new Response.fromJson(v)); });
// 		}
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		if (this.parameters != null) {
//       data['parameters'] = this.parameters!.toJson();
//     }
// 		data['results'] = this.results;
// 		if (this.paging != null) {
//       data['paging'] = this.paging!.toJson();
//     }
// 		if (this.response != null) {
//       data['response'] = this.response!.map((v) => v.toJson()).toList();
//     }
// 		return data;
// 	}
// }

// class Parameters {
// 	String? league;
// 	String? season;

// 	Parameters({this.league, this.season});

// 	Parameters.fromJson(Map<String, dynamic> json) {
// 		league = json['league'];
// 		season = json['season'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['league'] = this.league;
// 		data['season'] = this.season;
// 		return data;
// 	}
// }

// class Paging {
// 	int? current;
// 	int? total;

// 	Paging({this.current, this.total});

// 	Paging.fromJson(Map<String, dynamic> json) {
// 		current = json['current'];
// 		total = json['total'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['current'] = this.current;
// 		data['total'] = this.total;
// 		return data;
// 	}
// }

// class Response {
// 	League? league;

// 	Response({this.league});

// 	Response.fromJson(Map<String, dynamic> json) {
// 		league = json['league'] != null ? new League.fromJson(json['league']) : null;
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		if (this.league != null) {
//       data['league'] = this.league!.toJson();
//     }
// 		return data;
// 	}
// }

// class League {
// 	int? id;
// 	String? name;
// 	String? country;
// 	String? logo;
// 	String? flag;
// 	int? season;
// 	List<List>? standings;

// 	League({this.id, this.name, this.country, this.logo, this.flag, this.season, this.standings});

// 	League.fromJson(Map<String, dynamic> json) {
// 		id = json['id'];
// 		name = json['name'];
// 		country = json['country'];
// 		logo = json['logo'];
// 		flag = json['flag'];
// 		season = json['season'];
// 		if (json['standings'] != null) {
// 			standings = <List>[];
// 			json['standings'].forEach((v) { standings!.add(new List.fromJson(v)); });
// 		}
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['id'] = this.id;
// 		data['name'] = this.name;
// 		data['country'] = this.country;
// 		data['logo'] = this.logo;
// 		data['flag'] = this.flag;
// 		data['season'] = this.season;
// 		if (this.standings != null) {
//       data['standings'] = this.standings!.map((v) => v.toJson()).toList();
//     }
// 		return data;
// 	}
// }

// class Standings {


// 	Standings({});

// 	Standings.fromJson(Map<String, dynamic> json) {
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		return data;
// 	}
// }
