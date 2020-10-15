import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'listagem_pedidos_controller.g.dart';

@Injectable()
class ListagemPedidosController = _ListagemPedidosControllerBase
    with _$ListagemPedidosController;

abstract class _ListagemPedidosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
