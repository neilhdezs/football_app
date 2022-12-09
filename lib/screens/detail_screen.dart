import 'package:flutter/material.dart';
import 'package:football_app/models/competition_table.dart';
import 'package:football_app/provider/football_provider.dart';
import 'package:football_app/widgets/widgets.dart';
import 'package:provider/provider.dart';


class DetailScreen extends StatelessWidget {
  String competition;
  DetailScreen({super.key, required this.competition});

  @override
  Widget build(BuildContext context) {
    final competitionProvider = Provider.of<FootballProvider>(context, listen: true); 
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabla Clasificación'),
      ),
      body: FutureBuilder(
        future: competitionProvider.getCompetitionTable(competition),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const EmptyContainer();

          List<CompetitionsTable> listTableCompetition = snapshot.data!;

          return Container(
                margin: const EdgeInsets.only(bottom: 30),
                width: double.infinity,
                child: ListView.builder(
                  itemCount: listTableCompetition.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) =>
                      TableCompetitionItem(table: listTableCompetition[index]),
                ),
              );

        },
      ),
    );
  }
}