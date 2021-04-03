import 'package:flutter/material.dart';

class Season {
  final String name;
  Season(this.name);
}

Iterable<Season> getSeasons() {
  return <Season>{
    Season('2020'),
    Season('2019'),
    Season('2018'),
    Season('2017')
  };
}

class Seasons extends StatefulWidget {
  @override
  _SeasonsState createState() => _SeasonsState();
}

class _SeasonsState extends State<Seasons> {
  final _seasons = <Season>[];
  final _biggerFont = TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSeasons(),
    );
  }

  Widget _buildSeasons() {
    _seasons.addAll(getSeasons());
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: _seasons.length,
        itemBuilder: /*1*/ (context, index) {
          return _buildRow(_seasons[index]);
        });
  }

  Widget _buildRow(Season season) {
    return ListTile(
      title: Text(
        season.name,
        style: _biggerFont,
      ),
    );
  }
}
