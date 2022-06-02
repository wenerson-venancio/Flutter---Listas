import 'package:devtravel/pages/home_controller.dart';
import 'package:flutter/material.dart';
import 'home_controller.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  var controller = HomeController();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Lista'),
      ),
      body: ListView.separated(
        itemCount: controller.tabela.length,
        itemBuilder: (BuildContext context, int i) {
          final tabela = controller.tabela;
          return  ListTile(
            leading: Image.network(tabela[i].brasao),
            title: Text(tabela[i].nome),
            trailing: Text(
              tabela[i].pontos.toString(),
            ),
          );
        }, 
        separatorBuilder: (_, __) => const Divider(),
        padding: const EdgeInsets.all(16),        
      ),
    );
  }
}
