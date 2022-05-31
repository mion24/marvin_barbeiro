import 'package:flutter/material.dart';
import 'package:marvin_barbeiro/pages/cliente/clientes/clientes.dart';
import 'package:marvin_barbeiro/pages/home/componentes/card_resumo_vendas.dart';
import 'package:marvin_barbeiro/pages/venda/vendas/vendas.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marvin Barbearia'),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          CardResumoVendas(
            titulo: 'Dia',
            atendimentos: '22',
            valorTotal: '1',
          ),
          CardResumoVendas(
            titulo: 'Mês',
            atendimentos: '22',
            valorTotal: '1',
          ),
          CardResumoVendas(
            titulo: 'Ano',
            atendimentos: '22',
            valorTotal: '1',
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
