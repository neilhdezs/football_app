import 'package:flutter/material.dart';
import 'package:football_app/models/competition_table.dart';

class TableCompetitionItem extends StatelessWidget {
  CompetitionsTable table;
  TableCompetitionItem({super.key, required this.table});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        Image.network(table.squadLogo, scale: 1.5,),
        const SizedBox(width: 15,),
        Text('\t\t${table.position}º'),
        const SizedBox(width: 15,),
        Text('\t\t${table.played}'),
        const SizedBox(width: 15,),
        Text('\t\t${table.winned}'),
        const SizedBox(width: 15,),
        Text('\t\t${table.tie}'),
        const SizedBox(width: 15,),
        Text('\t\t${table.loosed}'),
        const SizedBox(width: 15,),
        Text('\t\t${table.goalDifference}'),
        const SizedBox(width: 15,),
        Text('\t\t${table.points}'),
        
      ],
    );
  }
}