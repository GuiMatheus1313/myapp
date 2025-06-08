import 'package:flutter/material.dart';
import 'package:myapp/JsonAutoTest/model/mago.dart';

class DetailMago extends StatelessWidget {
  final Mago mago;

  const DetailMago({required this.mago});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feitiços de ${mago.nome}'),
      ),
      body: ListView.builder(
        itemCount: mago.feiticos.length,
        itemBuilder: (context, index) {
          final feitico = mago.feiticos[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              title: Text(feitico.nome),
              subtitle: Text(feitico.descricao),
              leading: CircleAvatar(
                child: Text(feitico.elemento[0].toUpperCase()),
              ),
            ),
          );
        },
      ),
    );
  }
}