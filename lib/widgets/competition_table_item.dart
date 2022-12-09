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
        if(table.position.length == 1)
        Text('\t\t\t${table.position}º\t'),
        if(table.position.length != 1)
        Text('\t\t${table.position}º'),
        
        const SizedBox(width: 15,),
        if(table.played.length == 1)
        Text('\t\t${table.played}\t\t'),
        if(table.played.length != 1)
        Text('\t\t${table.played}'),

        const SizedBox(width: 15,),
        if(table.winned.length == 1) 
        Text('\t\t\t${table.winned}\t\t'),
        if(table.winned.length != 1)
        Text('\t\t${table.winned}'),
        
        const SizedBox(width: 15,),
        if(table.winned.length == 1)
        Text('\t\t${table.winned}\t\t'),
        if(table.winned.length != 1)
        Text('\t\t${table.winned}'),

        const SizedBox(width: 15,),
        if(table.loosed.length == 1)
        Text('\t\t${table.loosed}\t\t'),
        if(table.loosed.length != 1)
        Text('\t\t${table.loosed}'),

        const SizedBox(width: 15,),
        if(table.points.length == 1)
        Text('\t\t${table.points}\t\t'),
        if(table.points.length != 1)
        Text('\t\t${table.points}'),
        
      ],
    );
  }
}