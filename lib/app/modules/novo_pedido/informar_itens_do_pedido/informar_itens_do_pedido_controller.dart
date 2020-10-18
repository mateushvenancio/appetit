import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'informar_itens_do_pedido_controller.g.dart';

@Injectable()
class InformarItensDoPedidoController = _InformarItensDoPedidoControllerBase
    with _$InformarItensDoPedidoController;

abstract class _InformarItensDoPedidoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
