import 'dart:ffi';

import 'package:marvin_barbeiro/core/data/local_storage.dart';
import 'package:mobx/mobx.dart';

import 'cliente_store.dart';
part 'clientes_store.g.dart';

class ClientesStore = _ClientesStoreBase with _$ClientesStore;

abstract class _ClientesStoreBase with Store {
  @observable
  ObservableList<ClienteStore> clientes = ObservableList<ClienteStore>();

  @action
  void mesclarCliente(ClienteStore cliente) async {
    final ix = clientes.indexOf(cliente);

    if (ix > -1) {
      clientes.removeAt(ix);
    }
    clientes.add(cliente);

    await salvarNoLocalStorage();

    clientes.sort(
      (a, b) => a.nome!.compareTo(b.nome!), //lista em ordem alfabética
    );
  }

  @action
  void remover(ClienteStore cliente) => clientes.remove(cliente);

  Future salvarNoLocalStorage() async {
    final localStorage = LocalStorage();
    final json = clientes.toList().map((e) => toClienteModel(e).toJson());
    await localStorage.salvar('clientes', json);
  }
}
