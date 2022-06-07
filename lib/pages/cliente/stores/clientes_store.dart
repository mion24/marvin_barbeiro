import 'dart:convert';
import 'dart:ffi';

import 'package:marvin_barbeiro/core/data/local_storage.dart';
import 'package:marvin_barbeiro/pages/cliente/model/cliente.dart';
import 'package:mobx/mobx.dart';

import 'cliente_store.dart';
part 'clientes_store.g.dart';

class ClientesStore = _ClientesStoreBase with _$ClientesStore;

abstract class _ClientesStoreBase with Store {
  @observable
  ObservableList<ClienteStore> clientes = ObservableList<ClienteStore>();

  @action
  Future<void> mesclarCliente(ClienteStore cliente) async {
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
    final listaClientes = clientes.toList().map((e) => e.toModel()).toList();
    await localStorage.salvar('clientes', json.encode(listaClientes));
  }

  Future <ObservableList<ClienteStore>> carregarClientes() async {
    clientes = ObservableList<ClienteStore>();

    final localStorage = LocalStorage();
    final listaClientesJson = await localStorage.ler('clientes');

    if (listaClientesJson != null) {
      List listaClientes = json.decode(listaClientesJson);

      listaClientes.forEach((e) {
        clientes.add(toClienteStore(ClienteModel.fromJson(e)));
      });
    }

  return clientes;

  }


}
