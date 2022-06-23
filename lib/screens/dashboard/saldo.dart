import 'package:flutter/material.dart';
import 'package:flutter_gerenciamento_estado/models/saldo.dart';
import 'package:provider/provider.dart';

class SaldoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: EdgeInsets.all(20),
          child: Consumer<Saldo>(builder: (context, valor, child) {
            return Text(valor.toString(),
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold));
          })),
    );
  }
}
