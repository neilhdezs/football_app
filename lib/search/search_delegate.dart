import 'package:flutter/material.dart';
import 'package:football_app/models/competition.dart';
import 'package:football_app/provider/football_provider.dart';
import 'package:football_app/widgets/widgets.dart';

import 'package:provider/provider.dart';

import '../utils/const.dart';

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

    List<Competition> competitions = [];

    for (var competition in Const.competitions) {
      
      if (competition.nameBeauty.startsWith(query)) {
        competitions.add(competition);
      }

    }
    return MyListView(competitions: competitions);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return _EmptyContainer();
    }

    List<Competition> competitions = [];

    for (var competition in Const.competitions) {
      
      if (competition.nameBeauty.startsWith(query)) {
        competitions.add(competition);
      }

    }
    return MyListView(competitions: competitions);
  }

}

Widget _EmptyContainer() {
  return const Center(
      child: Icon(
    Icons.movie_creation_outlined,
    color: Colors.black38,
    size: 130,
  ));
}


class MyListView extends StatelessWidget {
  final List<Competition> competitions;
  const MyListView({super.key, required this.competitions});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(), 
      itemCount: competitions.length,
      itemBuilder: (context, index) => CompetitionItem(competition: competitions[index]),
      );
  }
}


