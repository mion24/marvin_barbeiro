import 'package:flutter/material.dart';

class NovoCliente extends StatelessWidget {
  const NovoCliente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Insira seu nome",
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Idade",
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "UF",
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "E-Mail",
              ),
            ),
            ElevatedButton(
              onPressed: (() {
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
