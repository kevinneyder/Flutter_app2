import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final options = ['One', 'Two', 'Tree', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: ListView(
        children: _crearItems(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = <Widget>[];
    
    for (var item in options) {
      final tempWidget = ListTile(
        title: Text(item),
      );
      lista..add(tempWidget)
           ..add(Divider(
                  color: Colors.green,
                )
      );
    }
    return lista;
  }

}