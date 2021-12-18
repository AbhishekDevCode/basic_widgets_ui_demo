import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Text("Home"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          flexibleSpace: SafeArea(
            child: Icon(
              Icons.photo_camera,
              size: 75.0,
              color: Colors.white70,
            ),
          ),
          bottom: PreferredSize(
            child: Container(
              color: Colors.lightGreen.shade100,
              height: 75.0,
              width: double.infinity,
              child: Center(
                child: Icon(Icons.menu_sharp),
              ),
            ),
            preferredSize: Size.fromHeight(75.0),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const ContainerWithBoxDecorationWidget(),
                ],
              ),
            ),
          ),
        ));
  }
}

class ContainerWithBoxDecorationWidget extends StatelessWidget {
  const ContainerWithBoxDecorationWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        height: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100.0),
            bottomRight: Radius.circular(10.0),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.lightGreen.shade500,
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0,
              offset: Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Center(
          child: RichText(
            text: TextSpan(
              text: 'Flutter World',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.deepPurple,
                decoration: TextDecoration.underline,
                decorationColor: Colors.deepPurpleAccent,
                decorationStyle: TextDecorationStyle.dotted,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' for',
                ),
                TextSpan(
                  text: ' Mobile',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text('Column 1'),
          Divider(color: Colors.black),
          Text('Column 2'),
          Divider(color: Colors.black),
          Text('Column 3'),
        ],
      ),
      Divider(
        color: Colors.black,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Row 1'),
              Padding(
                padding: EdgeInsets.all(16.0),
              ),
              Text('Row 2'),
              Padding(
                padding: EdgeInsets.all(16.0),
              ),
              Text('Row 3'),
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            'Columns and Row Nesting 1',
          ),
          Text(
            'Columns and Row Nesting 2',
          ),
          Text(
            'Columns and Row Nesting 3',
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Row Nesting 1'),
              Text('Row Nesting 2'),
              Text('Row Nesting 3'),
            ],
          ),
        ],
      ),
      Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(16.0)),
              TextButton(
                onPressed: () {},
                child: Text("Flag"),
              ),
              Padding(padding: EdgeInsets.all(16.0)),
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.flag),
              ),
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(16.0)),
              ElevatedButton(
                onPressed: () {},
                child: Text('Save'),
              ),
              Padding(padding: EdgeInsets.all(16.0)),
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.save),
              ),
            ],
          ),
        ],
      )
    ]);
  }
}
