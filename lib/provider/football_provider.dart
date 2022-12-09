import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:football_app/models/competition_table.dart';
import 'package:http/http.dart' as http;

class FootballProvider extends ChangeNotifier {
  
  final String _baseUrlCompetition = 'https://football98.p.rapidapi.com/';

  final String _baseUrlCompetitionTable = 'https://football98.p.rapidapi.com/premierleague/table';


  List<CompetitionsTable> listCompetitionTable = [];
  List<String> listCompetitionsAvailable = [];


  Future<String> _getJsonData({String competition = '', String endPoint = '', String option = ''}) async {
    //Pass headers below 
    var jsonData = await http.get(Uri.parse('$_baseUrlCompetition$endPoint$competition$option'), headers: {
      "X-RapidAPI-Key": "4c5f0244cdmsh03f622c619ab6c9p1b4e08jsnfbea51ce9229",
      "X-RapidAPI-Host": "football98.p.rapidapi.com"
      });
    return jsonData.body;
  }

  Future<List<String>> getListCompetitionsAvailable() async {
    
    if (listCompetitionsAvailable.isEmpty) {
      var data = await _getJsonData(endPoint: 'competitions');

      String dataClean = data.trim().substring(2, data.length-2);
      listCompetitionsAvailable.clear();
      for (var competition in dataClean.split(',')) {
        listCompetitionsAvailable.add(competition);
      }
    }

    return listCompetitionsAvailable;
  }

    Future<List<CompetitionsTable>> getCompetitionTable(String competition) async {
      var data = await _getJsonData(competition: competition, option: '/table');

      Iterable l = json.decode(data);
      listCompetitionTable = List<CompetitionsTable>.from(l.map((model) => CompetitionsTable.fromMap(model)));        

    return listCompetitionTable;
  }

}


String competitionsFromJson(String str) => json.decode(str);

String competitionsToJson(String data) => json.encode(data);
