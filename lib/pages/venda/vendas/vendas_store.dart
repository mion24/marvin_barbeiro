import 'package:marvin_barbeiro/pages/venda/nova_venda/components/nova_venda_store.dart';
import 'package:mobx/mobx.dart';
part 'vendas_store.g.dart';

class VendasStore = _VendasStoreBase with _$VendasStore;

abstract class _VendasStoreBase with Store {
  @observable
  ObservableList<NovaVendaStore> vendas = ObservableList<NovaVendaStore>();

  void adicionarNovaVenda(NovaVendaStore venda) {
    venda.id = obterIdNovaVenda();
    vendas.add(venda);
  }

  @action
  int obterIdNovaVenda() => vendas.length + 1;

  @computed
  String get vendasDiaValor {
    var dataHoje = DateTime.now();
    var valor = 0.0;

    for (var venda in vendas) {
      if (venda.data!.day == dataHoje.day &&
          venda.data!.month == dataHoje.month &&
          venda.data!.year == dataHoje.year) {
        valor += venda.servicoModel!.valor!;
      }
    }

    return valor.toString();
  }

  String get vendasMesValor {
    var mes = DateTime.now();
    var valor = 0.0;

    for (var venda in vendas) {
      if (venda.data!.month == mes.month && venda.data!.year == mes.year) {
        valor += venda.servicoModel!.valor!;
      }
    }

    return valor.toString();
  }

  String get vendasAnoValor {
    var ano = DateTime.now();
    var valor = 0.0;

    for (var venda in vendas) {
      if (venda.data!.year == ano.year) {
        valor += venda.servicoModel!.valor!;
      }
    }

    return valor.toString();
  }

  String get nClientesDia {
    var clientesDia = vendas.length;
    var data = DateTime.now();

    for (var venda in vendas) {
      if (venda.data!.day == data.day &&
          venda.data!.month == data.month &&
          venda.data!.year == data.year) ;
    }

    return clientesDia.toString();
  }

  String get nClientesMes {
    var clientesMes = vendas.length;
    var data = DateTime.now();

    for (var venda in vendas) {
      if (venda.data!.month == data.month && venda.data!.year == data.year) ;
    }

    return clientesMes.toString();
  }

  String get nClientesAno {
    var clientesAno = vendas.length;
    var data = DateTime.now();

    for (var venda in vendas) {
      if (venda.data!.year == data.year) ;
    }

    return clientesAno.toString();
  }
}
