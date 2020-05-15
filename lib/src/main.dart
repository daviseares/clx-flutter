import 'package:clx/src/list_item.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF234894),
        accentColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Hello World'),
    );
  }
}






class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search), color: Colors.white, onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            tag: 'image',
          ),
          ListItem(
            tag: 'image2'
          ),
          ListItem(
            tag: 'image3'
          ),
        ],
      ),
      drawer: Drawer(),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: Theme.of(context).accentColor,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
