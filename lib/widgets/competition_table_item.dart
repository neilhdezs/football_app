import 'package:flutter/material.dart';
import 'package:football_app/models/competition_table.dart';

class TableCompetitionItem extends StatelessWidget {
  final CompetitionsTable table;
  const TableCompetitionItem({super.key, required this.table});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Row(
      children: [
        
        FadeInImage(
          placeholder: const AssetImage('assets/no-image.jpg'),
          image: NetworkImage(table.getSquadLogo),
          height: 27.5,
          width: 27.5,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 0,),
        if(table.position.length == 1)
        Text('\t\t\t${table.position}º\t'),
        if(table.position.length != 1)
        Text('\t\t${table.position}º'),
        
        SizedBox(width: size.width*0.09,),
        if(table.played.length == 1)
        Text('\t\t${table.played}\t\t'),
        if(table.played.length != 1)
        Text('\t\t${table.played}'),

        SizedBox(width: size.width*0.09,),
        if(table.winned.length == 1) 
        Text('\t\t\t${table.winned}\t\t'),
        if(table.winned.length != 1)
        Text('\t\t${table.winned}'),
        
        SizedBox(width: size.width*0.09,),
        if(table.tie.length == 1)
        Text('\t\t${table.tie}\t\t'),
        if(table.tie.length != 1)
        Text('\t\t${table.tie}'),

        SizedBox(width: size.width*0.09,),
        if(table.loosed.length == 1)
        Text('\t\t${table.loosed}\t\t'),
        if(table.loosed.length != 1)
        Text('\t\t${table.loosed}'),

        SizedBox(width: size.width*0.09,),
        if(table.points.length == 1)
        Text('\t\t${table.points}\t\t'),
        if(table.points.length != 1)
        Text('\t\t${table.points}'),
        
      ],
    );
  }
}