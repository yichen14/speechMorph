import 'package:flutter/material.dart';

class StuffInTiles extends StatelessWidget {
  final MyTile myTile;
  StuffInTiles(this.myTile);

  @override
  Widget build(BuildContext context) {
    return _buildTiles(myTile);
  }

  Widget _buildTiles(MyTile tile) {
    return new ExpansionTile(
      key: new PageStorageKey<MyTile>(tile),
      title: new Text(tile.title),
      children: tile.children.map(_buildTiles).toList(),
    );
  }
}

class MyTile {
  String title;
  List<MyTile> children;
  Icon icon;
  MyTile(this.title, [this.children = const <MyTile>[]]);
}

List<MyTile> listOfTiles =  <MyTile>[
  new MyTile(
    'Speech Style',
    <MyTile> [
      new MyTile('Trump'),
      new MyTile('Obama'),
      new MyTile('Hillary'),
    ]
  ),
  new MyTile(
    'Developer Info',
    <MyTile> [
      new MyTile('Front End: Eason Lu, Alexa Hu'),
      new MyTile('Back End: Chenhui Zhang, Yihong Jian'),
    ]
  )
];