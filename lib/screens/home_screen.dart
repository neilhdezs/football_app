import 'package:flutter/material.dart';
import 'package:football_app/provider/football_provider.dart';
import 'package:football_app/search/search_delegate.dart';
import 'package:football_app/widgets/widgets.dart';

import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  

  @override
  Widget build(BuildContext context) {

    //final competitionProvider = Provider.of<FootballProvider>(context, listen: true); 

    final List<String> listCompetitions = ['1º División, La Liga Santander'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Comeptitions'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () => showSearch(context: context, delegate: CompetitionSearchDelegate()), 
            icon: const Icon(Icons.search_outlined)
          )
        ],
      ),

      body: ListView.builder(
              itemCount: listCompetitions.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) =>
                  CompetitionItem(competition: listCompetitions[index]),
            ),


      //Center(
      //   child: FutureBuilder(
      //     future: competitionProvider.getListCompetitionsAvailable(),
      //     builder: (context, snapshot) {
      //       if (!snapshot.hasData) return const EmptyContainer();

      //       List<String> listCompetitions = snapshot.data!;

      //       return Container(
      //         margin: const EdgeInsets.only(bottom: 30),
      //         width: double.infinity,
      //         child: ListView.builder(
      //           itemCount: listCompetitions.length,
      //           scrollDirection: Axis.vertical,
      //           itemBuilder: (BuildContext context, int index) =>
      //               CompetitionItem(competition: listCompetitions[index]),
      //         ),
      //       );
      //     },
      //   )
      // ),
    );
  }
}