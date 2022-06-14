import 'package:flutter/material.dart';
import 'package:marvin_barbeiro/pages/venda/nova_venda/components/nova_venda_store.dart';

class FormasPagamento extends StatelessWidget {

  final NovaVendaStore store;
  const FormasPagamento({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Forma de Pagamento'),
          DropdownButtonFormField(
            items: const <DropdownMenuItem<String>>[
              DropdownMenuItem(
                child: Text('Dinheiro'),
                value: 'Dinheiro',
              ),
              DropdownMenuItem(
                child: Text('Cartão de Crédito'),
                value: 'Cartão de Crédito',
              ),
              DropdownMenuItem(
                child: Text('Pix'),
                value: 'Pix',
              ),
              DropdownMenuItem(
                child: Text('Cartão de Débito'),
                value: 'Cartão de Débito',
              ),
            ],
            value: store.formaPagamento,
            onChanged: (String? value) {
              store.formaPagamento = value!;
            },
          ),
        ],
      ),
    );
  }
}
