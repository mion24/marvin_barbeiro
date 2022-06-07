import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:marvin_barbeiro/pages/cliente/stores/cliente_store.dart';
import 'package:marvin_barbeiro/pages/cliente/stores/clientes_store.dart';

class NovoCliente extends StatelessWidget {
  const NovoCliente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final clientesStore = GetIt.I.get<ClientesStore>();
    final clienteStore = GetIt.I.get<ClienteStore>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Cliente"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              initialValue: clienteStore.nome,
              onChanged: (String value) => clienteStore.nome = value,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Insira seu nome",
              ),
            ),
            TextFormField(
              initialValue: clienteStore.idade,
              onChanged: (String value) => clienteStore.idade = value,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Idade",
              ),
            ),
            TextFormField(
              initialValue: clienteStore.uf,
              onChanged: (String value) => clienteStore.uf = value,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "UF",
              ),
            ),
            TextFormField(
              initialValue: clienteStore.email,
              onChanged: (String value) => clienteStore.email = value,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "E-mail",
              ),
            ),
            ElevatedButton(
              onPressed: (() async {
                await clientesStore.mesclarCliente(clienteStore);
                Navigator.pop(context);
              }),
              child: Text("Salvar"),
            )
          ],
        ),
      ),
    );
  }
}
