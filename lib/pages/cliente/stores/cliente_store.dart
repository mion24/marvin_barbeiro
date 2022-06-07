import 'package:marvin_barbeiro/pages/cliente/model/cliente.dart';
import 'package:mobx/mobx.dart';
part 'cliente_store.g.dart';

ClienteStore toClienteStore(ClienteModel model) => ClienteStore(
      nome: model.nome,
      idade: model.idade,
      email: model.email,
      uf: model.ufNascimento,
    );

class ClienteStore = _ClienteStoreBase with _$ClienteStore;

abstract class _ClienteStoreBase with Store {
  _ClienteStoreBase({
    this.nome,
    this.idade,
    this.uf,
    this.email,
  });

  @observable
  String? nome;
  @observable
  String? idade;
  @observable
  String? email;
  @observable
  String? uf;


toModel() => ClienteModel(
  nome: nome,
  idade: idade,
  email: email,
  ufNascimento: uf,
);
}