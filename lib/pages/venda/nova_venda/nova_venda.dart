import 'package:flutter/material.dart';
import 'package:marvin_barbeiro/pages/venda/nova_venda/components/formas_pagamento/formas_pagamento.dart';

class NovaVendaView extends StatelessWidget {
  const NovaVendaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Venda'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Cliente',
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    ),
                  ),
                )),
                IconButton(onPressed: () {}, icon: Icon(Icons.people))
              ],
            ),
          ),
          FormasPagamento()
        ],
      ),
    );
  }
}
