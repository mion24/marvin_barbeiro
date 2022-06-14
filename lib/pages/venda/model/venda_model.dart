import 'package:marvin_barbeiro/pages/cliente/model/cliente.dart';
import 'package:marvin_barbeiro/pages/servicos/model/servico_model.dart';

class VendaModel{
  VendaModel({
    this.id,
    this.cliente,
    this.data,
    this.formaPagamento,
    this.servico,
  });

  int? id;
  ClienteModel? cliente;
  String? formaPagamento;
  DateTime? data;
  ServicoModel? servico;
}