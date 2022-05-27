import 'package:flutter/material.dart';
import 'package:marvin_barbeiro/pages/cliente/clientes/components/card_cliente.dart';
import 'package:marvin_barbeiro/pages/cliente/novo_cliente/novo_cliente.dart';

class ClientesView extends StatelessWidget {
  const ClientesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NovoCliente(),
            ),
          );
        },
        child: Icon(Icons.add_circle),
      ),
      body: ListView(
        children: [
          CardCliente(
            nome: "Jorgin",
            idade: "19",
            ufNascimento: "acre",
            email: "mion24@gmail.com",
          )
        ],
      ),
    );
  }
}
