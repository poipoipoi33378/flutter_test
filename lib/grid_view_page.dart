import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({
    Key? key,
  }) : super(key: key);
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.grid_on,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.grid_off,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (context, index) => Container(
            color: Colors.black,
            child: Center(
                child: Text(
              index.toString(),
              style: TextStyle(fontSize: 42, color: Colors.white),
            ))),
      ),
    );
  }
}
