import 'package:flutter/material.dart';
import 'package:flutter_gerenciamento_estado/models/saldo.dart';
import 'package:flutter_gerenciamento_estado/screens/dashboard/dashboard.dart';
import 'package:flutter_gerenciamento_estado/screens/transferencia/lista.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (context) => Saldo(11),
      child: BytebankApp(),
    ));

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.green[900],
          secondary: Colors.blueAccent[700],
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
      // home: ListaTransferencias(),
    );
  }
}
