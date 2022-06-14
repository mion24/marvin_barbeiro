import 'package:flutter/material.dart';
import 'package:marvin_barbeiro/pages/servicos/model/servico_model.dart';
import 'package:marvin_barbeiro/pages/venda/nova_venda/components/nova_venda_store.dart';

class Servicos extends StatelessWidget {
  final NovaVendaStore store;
  
  const Servicos({ Key? key, required this.store }) : super(key: key);

  
  @override 
  Widget build(BuildContext context) {

    final _servicos = <ServicoModel>[
      ServicoModel(id: 1, descricao: 'Corte de Cabelo', valor: 25),
      ServicoModel(id: 2, descricao: 'Barba', valor: 25),   
      ServicoModel(id: 3, descricao: 'Corte de Cabelo e Barba', valor: 45),
    ];
      var menuItens = <DropdownMenuItem<ServicoModel>> [];
      _servicos.forEach((servico) => menuItens.add(DropdownMenuItem(child: Text(servico.descricao!),
      value: servico,),),);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Tipo de Serviço'),
        DropdownButtonFormField(
          hint: Text('Sobrancelha'),
          value: store.servicoModel,
          items: menuItens, onChanged: (ServicoModel? value){store.servicoModel = value!;},),
      ],
    );
  }
}