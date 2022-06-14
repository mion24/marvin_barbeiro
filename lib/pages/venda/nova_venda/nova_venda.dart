import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
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
                Observer(builder: (_) {
                   return Expanded(
                    child: TextFormField(
                      initialValue: store.cliente!.nome,
                      onChanged:(String? value) => store.cliente!.nome = value,
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
                IconButton(onPressed: () {}, icon: Icon(Icons.people))
              ],
            ),
          ),
          FormasPagamento(store: store,),
          const SizedBox(height: 8,),
          Servicos(store: store,),
          const SizedBox(height: 8,),
          Align(
            alignment: Alignment.centerLeft,
            child: Observer(builder: (_){
              return Text("Valor: R\$${store.servicoModel == null ? '' : store.servicoModel!.valor}");
            }),
          ),
          const SizedBox(height: 9),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(onPressed: (){}, child: Text('Salvar Venda')),
          )
        ],
      ),
    );
  }
}
