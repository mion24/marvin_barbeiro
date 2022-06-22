import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:marvin_barbeiro/pages/venda/nova_venda/components/clientes/cliente_venda.dart';
import 'package:marvin_barbeiro/pages/venda/nova_venda/components/formas_pagamento/formas_pagamento.dart';
import 'package:marvin_barbeiro/pages/venda/nova_venda/components/nova_venda_store.dart';
import 'package:marvin_barbeiro/pages/venda/nova_venda/components/servicos/servicos.dart';
import 'package:mobx/mobx.dart';

class NovaVendaView extends StatelessWidget {
  const NovaVendaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = GetIt.I.get<NovaVendaStore>();
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
                Observer(
                  builder: (_) {
                    return Expanded(
                        child: TextFormField(
                      controller: store.controllerCliente,
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
                    ));
                  },
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  ClienteVenda(novaVendaStore: store))));
                    },
                    icon: Icon(Icons.people))
              ],
            ),
          ),
          FormasPagamento(
            store: store,
          ),
          const SizedBox(
            height: 8,
          ),
          Servicos(
            store: store,
          ),
          const SizedBox(
            height: 8,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Observer(builder: (_) {
              return Text(
                  "Valor: R\$${store.servicoModel == null ? '' : store.servicoModel!.valor}");
            }),
          ),
          const SizedBox(height: 9),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
                onPressed: () {
                  if (store.servicoModel == null) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Selecione o tipo de serviço'),
                      duration: Duration(milliseconds: 3000),
                      backgroundColor: Colors.black,
                    ));
                    return;
                  }

                  store.salvar();
                  Navigator.of(context).pop();
                },
                child: Text('Finalizar Venda')),
          )
        ],
      ),
    );
  }
}
