import 'package:flutter/material.dart';
import 'package:football_app/screens/screens.dart';

import '../models/competition.dart';

class CompetitionItem extends StatelessWidget {
  final Competition competition;
  const CompetitionItem({super.key, required this.competition});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(competition: competition.name),)),
      child: ListTile(
        leading: Image(
          height: 50,
          width: 50,
          image: AssetImage('assets/${competition.name}.jpg'),
        ),
        title: Text(competition.nameBeauty, style: const TextStyle(color: Colors.black),),
        subtitle: Text(competition.pais, style: const TextStyle(color: Colors.black),),
      ),
    );
  }
}