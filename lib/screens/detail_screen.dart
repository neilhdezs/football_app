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
    final competitionProvider = Provider.of<FootballProvider>(context, listen: true); 
    final size = MediaQuery.of(context).size;

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

            FutureBuilder(
              future: competitionProvider.getCompetitionTable(competition),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return const EmptyContainer();

                List<CompetitionsTable> listTableCompetition = snapshot.data!;

                return Expanded(
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
                    );

              },
            ),
          ]
        )
      )
    );
    
  }
}