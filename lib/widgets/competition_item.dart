import 'package:flutter/material.dart';
import 'package:football_app/screens/screens.dart';

class CompetitionItem extends StatelessWidget {
  String competition;
  CompetitionItem({super.key, required this.competition});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(competition: competition),)),
      child: ListTile(
        leading: const Icon(Icons.sports_football),
        title: Text(competition, style: const TextStyle(color: Colors.black),),
      ),
    );
  }
}