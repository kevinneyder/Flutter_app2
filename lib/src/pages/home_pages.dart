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
        // children: _crearItems(),
        children: _createItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = <Widget>[];
    
    for (var item in options) {
      final tempWidget = ListTile(
        title:  Text(item),
      );
      lista..add(tempWidget)
           ..add(Divider(
                  color: Colors.green,
                )
      );
    }
    return lista;
  }

  List<Widget> _createItemsCorta() {
    var widgets = options.map((item) {
      
      return Column(
        children: [
          ListTile(
            title: Text(item),
            subtitle: Text('Description'),
            leading: Icon(Icons.account_circle_rounded),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            onTap: (){},
            onLongPress: (){
              print('object');
            },
          ),
          Divider()
        ],
      );
    }).toList();

    return widgets;

  }

}