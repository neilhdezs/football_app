
import 'dart:convert';

class CompetitionsTable {
    CompetitionsTable({
        required this.position,
        required this.squadLogo,
        required this.name,
        required this.points,
        required this.played,
        required this.winned,
        required this.loosed,
        required this.tie,
        required this.goalDifference,
    });

    String position;
    String squadLogo;
    String name;
    String points;
    String played;
    String winned;
    String loosed;
    String tie;
    String goalDifference;

    factory CompetitionsTable.fromJson(String str) => CompetitionsTable.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CompetitionsTable.fromMap(Map<String, dynamic> json) => CompetitionsTable(
        position: json["Position"],
        squadLogo: json["SquadLogo"],
        name: json["Name"],
        points: json["Points"],
        played: json["Played"],
        winned: json["Winned"],
        loosed: json["Loosed"],
        tie: json["Tie"],
        goalDifference: json["Goal Difference"],
    );

    Map<String, dynamic> toMap() => {
        "Position": position,
        "SquadLogo": squadLogo,
        "Name": name,
        "Points": points,
        "Played": played,
        "Winned": winned,
        "Loosed": loosed,
        "Tie": tie,
        "Goal Difference": goalDifference,
    };
}
