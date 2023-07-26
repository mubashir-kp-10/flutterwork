import 'package:flutter/material.dart';

class GridSample extends StatelessWidget {
  const GridSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid view'),
      ),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            Card(
      child: Container(
      child: Text('Card')
    ),
    ),
    Card(
    child: Container(
    child: Text('Card')
    ),
    ),
            Card(
              child: Container(
                  child: Text('Card')
              ),
            ),
            Card(
              child: Container(
                  child: Text('Card')
              ),
            ),
        ],
      ),
    );
  }
}
