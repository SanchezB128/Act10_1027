import 'package:flutter/material.dart';
import 'package:Sanchez1027/page_1.dart';
import 'package:Sanchez1027/page_2.dart';
import 'package:Sanchez1027/page_3.dart';
import 'package:Sanchez1027/page_4.dart';
import 'package:Sanchez1027/page_5.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'Provedor';
      case 1:
        return 'Ingredientes';
      case 2:
        return 'Pizza';
      case 3:
        return 'Pedido';
      case 4:
        return 'Cliente';
      default:
        return 'Xbox Login';
    }
  }

  Widget _getPageBody(int index) {
    switch (index) {
      case 0:
        return Provedor();
      case 1:
        return Ingredientes();
      case 2:
        return Pizza();
      case 3:
        return Pedido();
      case 4:
        return Cliente();
      default:
        return Center(
          child: Text('Página no encontrada'),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_getTitle(_selectedIndex)),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Text('Provedor'),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Ingredientes'),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Pizza'),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Pedido'),
              selected: _selectedIndex == 3,
              onTap: () {
                _onItemTapped(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Cliente'),
              selected: _selectedIndex == 4,
              onTap: () {
                _onItemTapped(4);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _getPageBody(_selectedIndex),
    );
  }
}
