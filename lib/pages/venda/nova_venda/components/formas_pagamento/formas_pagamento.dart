import 'package:flutter/material.dart';

class FormasPagamento extends StatelessWidget {
  const FormasPagamento({Key? key}) : super(key: key);

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
            value: 'Dinheiro',
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
