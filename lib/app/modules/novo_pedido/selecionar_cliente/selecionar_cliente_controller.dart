import 'package:appetit/models/cliente_model.dart';
import 'package:appetit/repositories/cliente_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'selecionar_cliente_controller.g.dart';

@Injectable()
class SelecionarClienteController = _SelecionarClienteControllerBase
    with _$SelecionarClienteController;

abstract class _SelecionarClienteControllerBase with Store {
  final clienteRepository = Modular.get<ClienteRepository>();

  @observable
  ObservableList<ClienteModel> selecionados = <ClienteModel>[].asObservable();

  @action
  addCliente(ClienteModel cliente) => selecionados.add(cliente);

  @action
  removeCliente(ClienteModel cliente) => selecionados.removeWhere((c) {
        return c.nome == cliente.nome;
      });

  @computed
  int get quantidadeSelecionados => selecionados.length;

  bool existeCliente(ClienteModel cliente) {
    return selecionados.firstWhere(
          (_e) => _e.nome == cliente.nome,
          orElse: () => null,
        ) !=
        null;
  }
}
