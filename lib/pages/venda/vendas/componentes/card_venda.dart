import 'package:flutter/material.dart';

class CardVenda extends StatelessWidget {
  final String documento;
  final String nomeCliente;
  final String valorTotal;
  final String servico;

  const CardVenda({
    Key? key,
    required this.documento,
    required this.nomeCliente,
    required this.valorTotal,
    required this.servico,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: Theme.of(context).colorScheme.secondary,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(8), //espaçamento interno p todos os lados
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Doc: $documento",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              "Cliente: $nomeCliente",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              "Serviço: $servico",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              "Valor: $valorTotal",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ]),
        ),
      ),
    );
  }
}
