import 'package:flutter/material.dart';
import 'package:football_app/models/competition_table.dart';
import 'package:football_app/provider/football_provider.dart';
import 'package:football_app/widgets/widgets.dart';
import 'package:provider/provider.dart';


class DetailScreen extends StatelessWidget {
  final String competition;
  const DetailScreen({super.key, required this.competition});

  @override
  Widget build(BuildContext context) {
    //final competitionProvider = Provider.of<FootballProvider>(context, listen: true); 

    List<CompetitionsTable> listTableCompetition = [
      CompetitionsTable(position: '1', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F5.png', name: 'Barcelona', points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '2', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F26.png', name: 'Real Madrid', points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '3', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F223.png', name: 'Real Sociedad', points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '4', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F213.png', name: 'Athletic Club', points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '5', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F3.png', name: 'Atlético Madrid', points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '6', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F691.png', name: 'Real Betis', points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '7', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F221.png', name: 'Osasuna', points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '8', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F690.png', name: 'Rayo Vallecano', points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '9', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F226.png', name: 'Villarreal', points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '10', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F143.png', name: 'Valencia', points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '11', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F220.png', name: name, points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '12', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F244.png', name: name, points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '13', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F685.png', name: name, points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '14', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F212.png', name: name, points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '15', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F216.png', name: name, points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '16', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F215.png', name: name, points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '17', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F680.png', name: name, points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '18', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F28.png', name: name, points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '19', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F750.png', name: name, points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
      CompetitionsTable(position: '20', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F682.png', name: name, points: points, played: played, winned: winned, loosed: loosed, tie: tie, goalDifference: goalDifference),
    ]; 

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabla Clasificación'),
      ),
      body: Container(
                margin: const EdgeInsets.only(bottom: 30),
                width: double.infinity,
                child: ListView.builder(
                  itemCount: listTableCompetition.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) =>
                      TableCompetitionItem(table: listTableCompetition[index]),
                ),
              ),
      // FutureBuilder(
      //   future: competitionProvider.getCompetitionTable(competition),
      //   builder: (context, snapshot) {
      //     if (!snapshot.hasData) return const EmptyContainer();

      //     List<CompetitionsTable> listTableCompetition = snapshot.data!;

      //     return Container(
      //           margin: const EdgeInsets.only(bottom: 30),
      //           width: double.infinity,
      //           child: ListView.builder(
      //             itemCount: listTableCompetition.length,
      //             scrollDirection: Axis.vertical,
      //             itemBuilder: (BuildContext context, int index) =>
      //                 TableCompetitionItem(table: listTableCompetition[index]),
      //           ),
      //         );

      //   },
      // ),
    );
  }
}