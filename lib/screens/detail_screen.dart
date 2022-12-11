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
    final size = MediaQuery.of(context).size;

    List<CompetitionsTable> listTableCompetition = [
      CompetitionsTable(position: '1', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F5.png', name: 'Barcelona', points: '37', played: '14', winned: '12', loosed: '1', tie: '1', goalDifference: '28'),
      CompetitionsTable(position: '2', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F26.png', name: 'Real Madrid', points: '35', played: '14', winned: '11', loosed: '1', tie: '1', goalDifference: '19'),
      CompetitionsTable(position: '3', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F223.png', name: 'Real Sociedad', points: '26', played: '14', winned: '8', loosed: '4', tie: '2', goalDifference: '2'),
      CompetitionsTable(position: '4', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F213.png', name: 'Athletic Club', points: '24', played: '14', winned: '7', loosed: '4', tie: '3', goalDifference: '10'),
      CompetitionsTable(position: '5', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F3.png', name: 'Atlético Madrid', points: '24', played: '14', winned: '7', loosed: '4', tie: '3', goalDifference: '7'),
      CompetitionsTable(position: '6', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F691.png', name: 'Real Betis', points: '24', played: '14', winned: '7', loosed: '4', tie: '3', goalDifference: '5'),
      CompetitionsTable(position: '7', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F221.png', name: 'Osasuna', points: '23', played: '14', winned: '7', loosed: '5', tie: '2', goalDifference: '2'),
      CompetitionsTable(position: '8', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F690.png', name: 'Rayo Vallecano', points: "22", played: "14", winned: "6", loosed: "4", tie: "4", goalDifference: "4"),
      CompetitionsTable(position: '9', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F226.png', name: 'Villarreal', points: "21", played: "14", winned: "6", loosed: "5", tie: '3', goalDifference: '5'),
      CompetitionsTable(position: '10', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F143.png', name: 'Valencia', points: "19", played: "14", winned: "5", loosed: "5", tie: "4", goalDifference: "7"),
      CompetitionsTable(position: '11', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F220.png', name: 'Mallorca', points: "19", played: "14", winned: "5", loosed: "5", tie: "4", goalDifference: "0"),
      CompetitionsTable(position: '12', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F244.png', name: 'Real Valladolid', points: "17", played: "14", winned: "5", loosed: "7", tie: "2", goalDifference: "-8"),
      CompetitionsTable(position: '13', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F685.png', name: 'Girona', points: "16", played: "14", winned: "4", loosed: "6", tie: "4", goalDifference: "-2"),
      CompetitionsTable(position: '14', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F212.png', name: 'Almería', points: '16', played: "14", winned: "5", loosed: "8", tie: "1", goalDifference: "-6"),
      CompetitionsTable(position: '15', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F216.png', name: 'Getafe', points: '14', played: "14", winned: "3", loosed: "6", tie: "5", goalDifference: "-8"),
      CompetitionsTable(position: '16', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F215.png', name: 'Espanyol', points: '12', played: "14", winned: "2", loosed: "6", tie: "6", goalDifference: "-6"),
      CompetitionsTable(position: '17', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F680.png', name: 'Celta Vigo', points: '12', played: "14", winned: "3", loosed: "8", tie: "3", goalDifference: "-12"),
      CompetitionsTable(position: '18', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F28.png', name: 'Sevilla', points: '11', played: "14", winned: "2", loosed: "7", tie: "5", goalDifference: "-9"),
      CompetitionsTable(position: '19', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F750.png', name: 'Cádiz', points: '11', played: "14", winned: "2", loosed: "7", tie: "5", goalDifference: "-17"),
      CompetitionsTable(position: '20', squadLogo: 'https://image-service.onefootball.com/transform?w=21&h=21&dpr=2&image=https%253A%252F%252Fimages.onefootball.com%252Ficons%252Fteams%252F164%252F682.png', name: 'Elche', points: '4', played: "14", winned: '0', loosed: "10", tie: "4", goalDifference: "-21"),
    ]; 

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabla Clasificación'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [

            SizedBox(
              height: 10,
              width: size.width,
              child: Row(
                children: const [
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: Text('CLUB', textScaleFactor: 0.7, textAlign: TextAlign.center,),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(
                    width: 19,
                  ),
                  SizedBox(
                    width: 30,
                    child: Text('PJ', textScaleFactor: 0.7, textAlign: TextAlign.center,),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    width: 27.5,
                    child: Text('V', textScaleFactor: 0.7, textAlign: TextAlign.center,),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    width: 30,
                    child: Text('E', textScaleFactor: 0.7, textAlign: TextAlign.center,),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    width: 30,
                    child: Text('D', textScaleFactor: 0.7, textAlign: TextAlign.center,),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    width: 30,
                    child: Text('Pts', textScaleFactor: 0.7, textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      width: size.width,
                      height: size.height-160,
                      child: ListView.builder(
                        itemCount: listTableCompetition.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) =>
                            SizedBox(
                              height: 50,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TableCompetitionItem(table: listTableCompetition[index]),
                                  const Divider()
                                ],
                              ),
                            ),
                      ),
                    ),
          ],
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