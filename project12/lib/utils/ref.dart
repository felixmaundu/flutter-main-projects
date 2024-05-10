// // Get all available countries across all {seasons} and competitions
// get("https://v3.football.api-sports.io/countries");

// // Get all available countries from one country {name}
// get("https://v3.football.api-sports.io/countries?name=england");

// // Get all available countries from one country {code}
// get("https://v3.football.api-sports.io/countries?code=fr");

// // Allows you to search for a countries in relation to a country {name}
// get("https://v3.football.api-sports.io/countries?search=engl");

//###########################################################################
// Allows to retrieve all the seasons available for a league/cup
// get("https://v3.football.api-sports.io/leagues?id=39");

// // Get all leagues from one league {name}
// get("https://v3.football.api-sports.io/leagues?name=premier league");

// // Get all leagues from one {country}
// // You can find the available {country} by using the endpoint country
// get("https://v3.football.api-sports.io/leagues?country=england");

// // Get all leagues from one country {code} (GB, FR, IT etc..)
// // You can find the available country {code} by using the endpoint country
// get("https://v3.football.api-sports.io/leagues?code=gb");

// // Get all leagues from one {season}
// // You can find the available {season} by using the endpoint seasons
// get("https://v3.football.api-sports.io/leagues?season=2019");

// // Get one league from one league {id} & {season}
// get("https://v3.football.api-sports.io/leagues?season=2019&id=39");

// // Get all leagues in which the {team} has played at least one match
// get("https://v3.football.api-sports.io/leagues?team=33");

// // Allows you to search for a league in relation to a league {name} or {country}
// get("https://v3.football.api-sports.io/leagues?search=premier league");
// get("https://v3.football.api-sports.io/leagues?search=England");

// // Get all leagues from one {type}
// get("https://v3.football.api-sports.io/leagues?type=league");

// // Get all leagues where the season is in progress or not
// get("https://v3.football.api-sports.io/leagues?current=true");

// // Get the last 99 leagues or cups added to the API
// get("https://v3.football.api-sports.io/leagues?last=99");

// // It’s possible to make requests by mixing the available parameters
// get("https://v3.football.api-sports.io/leagues?season=2019&country=england&type=league");
// get("https://v3.football.api-sports.io/leagues?team=85&season=2019");
// get("https://v3.football.api-sports.io/leagues?id=61¤t=true&type=league");

//##################################################################
// Get fixture from one fixture {id}
// In this request events, lineups, statistics fixture and players fixture are returned in the response
// get("https://v3.football.api-sports.io/fixtures?id=215662");

// // Get fixture from severals fixtures {ids}
// // In this request events, lineups, statistics fixture and players fixture are returned in the response
// get("https://v3.football.api-sports.io/fixtures?ids=215662-215663-215664-215665-215666-215667");

// // Get all available fixtures in play
// // In this request events are returned in the response
// get("https://v3.football.api-sports.io/fixtures?live=all");

// // Get all available fixtures in play filter by several {league}
// // In this request events are returned in the response
// get("https://v3.football.api-sports.io/fixtures?live=39-61-48");

// // Get all available fixtures from one {league} & {season}
// get("https://v3.football.api-sports.io/fixtures?league=39&season=2019");

// // Get all available fixtures from one {date}
// get("https://v3.football.api-sports.io/fixtures?date=2019-10-22");

// // Get next X available fixtures
// get("https://v3.football.api-sports.io/fixtures?next=15");

// // Get last X available fixtures
// get("https://v3.football.api-sports.io/fixtures?last=15");

// // It’s possible to make requests by mixing the available parameters
// get("https://v3.football.api-sports.io/fixtures?date=2020-01-30&league=61&season=2019");
// get("https://v3.football.api-sports.io/fixtures?league=61&next=10");
// get("https://v3.football.api-sports.io/fixtures?venue=358&next=10");
// get("https://v3.football.api-sports.io/fixtures?league=61&last=10&status=ft");
// get("https://v3.football.api-sports.io/fixtures?team=85&last=10&timezone=Europe/london");
// get("https://v3.football.api-sports.io/fixtures?team=85&season=2019&from=2019-07-01&to=2020-10-31");
// get("https://v3.football.api-sports.io/fixtures?league=61&season=2019&from=2019-07-01&to=2020-10-31&timezone=Europe/london");
// get("https://v3.football.api-sports.io/fixtures?league=61&season=2019&round=Regular Season - 1");
//###############################################################
// Get all Standings from one {league} & {season}
// get("https://v3.football.api-sports.io/standings?league=39&season=2019");

// // Get all Standings from one {league} & {season} & {team}
// get("https://v3.football.api-sports.io/standings?league=39&team=33&season=2019");

// // Get all Standings from one {team} & {season}
// get("https://v3.football.api-sports.io/standings?team=33&season=2019");
//######################################################
// Get one team from one team {id}
// get("https://v3.football.api-sports.io/teams?id=33");

// // Get one team from one team {name}
// get("https://v3.football.api-sports.io/teams?name=manchester united");

// // Get all teams from one {league} & {season}
// get("https://v3.football.api-sports.io/teams?league=39&season=2019");

// // Get teams from one team {country}
// get("https://v3.football.api-sports.io/teams?country=england");

// // Get teams from one team {code}
// get("https://v3.football.api-sports.io/teams?code=FRA");

// // Get teams from one venue {id}
// get("https://v3.football.api-sports.io/teams?venue=789");

// // Allows you to search for a team in relation to a team {name} or {country}
// get("https://v3.football.api-sports.io/teams?search=manches");
// get("https://v3.football.api-sports.io/teams?search=England");
