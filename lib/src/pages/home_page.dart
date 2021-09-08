import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/providers/menu_provider.dart';
import 'package:flutter_application_2/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    // print(menuProvider.options);
    // menuProvider.cargarData().then((value) {
    //   print('$value -------');
    // });

    // return ListView(
    //   children: _listaItems(),
    // );
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('builder');
        print(snapshot.data);
        return ListView(
          children: _listaItems( snapshot.data!),
        );
      }, 
    );
  }

  List<Widget> _listaItems( List<dynamic> data) {
    final List<Widget> options = [];
    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue,),
        onTap: (){

        },
      );
      options..add(widgetTemp)
             ..add(Divider());
    });
    return options;
  }
}