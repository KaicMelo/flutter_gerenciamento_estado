import 'package:flutter/material.dart';
import 'package:flutter_gerenciamento_estado/screens/dashboard/saldo.dart';
import 'package:flutter_gerenciamento_estado/screens/deposito/formulario.dart';
import 'package:flutter_gerenciamento_estado/screens/transferencia/formulario.dart';
import 'package:flutter_gerenciamento_estado/screens/transferencia/ultimas.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bytebank'),
        ),
        body: ListView(children: [
          Align(
            alignment: Alignment.topCenter,
            child: SaldoCard(),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('Receber depósito'),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FormularioDeposito()));
                },
              ),
              ElevatedButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FormularioTransferencia()));
              }, child: Text('Nova transferência'))
            ],
          ),
          UltimasTransferencias()
        ]));
  }
}
