import 'package:flutter/material.dart';
import 'package:football_app/provider/football_provider.dart';
import 'package:football_app/widgets/widgets.dart';

import 'package:provider/provider.dart';

class CompetitionSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = '',
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return _EmptyContainer();
    }

    final competitionProvider = Provider.of<FootballProvider>(context, listen: true); 
    List<String> competitionsFilter = [];

    for (var competition in competitionProvider.listCompetitionsAvailable) {
      
      if (competition.startsWith(query)) {
        competitionsFilter.add(competition);
      }

    }
    return MyListView(competitions: competitionsFilter);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return _EmptyContainer();
    }

    final competitionProvider = Provider.of<FootballProvider>(context, listen: true); 
    List<String> competitionsFilter = [];

    for (var competition in competitionProvider.listCompetitionsAvailable) {
      
      if (competition.startsWith(query)) {
        competitionsFilter.add(competition);
      }

    }
    return MyListView(competitions: competitionsFilter);
  }

}

Widget _EmptyContainer() {
  return Container(
    child: const Center(
        child: Icon(
      Icons.movie_creation_outlined,
      color: Colors.black38,
      size: 130,
    )),
  );
}


class MyListView extends StatelessWidget {
  List<String> competitions;
  MyListView({super.key, required this.competitions});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(), 
      itemCount: competitions.length,
      itemBuilder: (context, index) => CompetitionItem(competition: competitions[index]),
      );
  }
}


