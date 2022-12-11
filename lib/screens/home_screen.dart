import 'package:flutter/material.dart';
import 'package:football_app/provider/football_provider.dart';
import 'package:football_app/search/search_delegate.dart';
import 'package:football_app/widgets/widgets.dart';

import 'package:provider/provider.dart';

import '../utils/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

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

      body: Center(
        child:Container(
          margin: const EdgeInsets.only(bottom: 30),
          width: double.infinity,
          child: ListView.builder(
            itemCount: Const.competitions.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) => CompetitionItem(competition: Const.competitions[index]),
          ),
        )
      ),
    );
  }
}