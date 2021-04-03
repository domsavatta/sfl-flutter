import 'package:flutter/material.dart';
import 'package:sfl/services/seasons.dart';

void main() => runApp(SFL());

class SFL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sports Fans League',
      home: Seasons(),
    );
  }
}
