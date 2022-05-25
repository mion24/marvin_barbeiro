import 'package:flutter/material.dart';

class CardVenda extends StatelessWidget {
  final String titulo;
  final String atendimentos;
  final String valorTotal;

  const CardVenda({
    Key? key,
    required this.titulo,
    required this.atendimentos,
    required this.valorTotal,
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
              titulo,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'Atendimentos',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              atendimentos,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'Valor Total',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              valorTotal,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ]),
        ),
      ),
    );
  }
}
