import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:marvin_barbeiro/pages/cliente/clientes/clientes.dart';
import 'package:marvin_barbeiro/pages/home/componentes/card_resumo_vendas.dart';
import 'package:marvin_barbeiro/pages/venda/vendas/vendas.dart';
import 'package:marvin_barbeiro/pages/venda/vendas/vendas_store.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final vendasStore = GetIt.I<VendasStore>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Marvin Barbearia'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Observer(
            builder: (_) {
              return CardResumoVendas(
                titulo: 'Dia',
                atendimentos: vendasStore.nClientesDia,
                valorTotal: vendasStore.vendasDiaValor,
              );
            },
          ),
          CardResumoVendas(
            titulo: 'Mes',
            atendimentos: vendasStore.nClientesMes,
            valorTotal: vendasStore.vendasMesValor,
          ),
          CardResumoVendas(
            titulo: 'Ano',
            atendimentos: vendasStore.nClientesAno,
            valorTotal: vendasStore.vendasMesValor,
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'clientes',
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ClientesView(),
                ),
              );
            }),
            child: Icon(Icons.people),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            heroTag: 'vendas',
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => VendasView(),
                ),
              );
            }),
            child: Icon(Icons.receipt),
          ),
        ],
      ),
    );
  }
}
