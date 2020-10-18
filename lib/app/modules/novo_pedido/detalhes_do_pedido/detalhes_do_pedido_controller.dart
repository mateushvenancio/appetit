import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'detalhes_do_pedido_controller.g.dart';

@Injectable()
class DetalhesDoPedidoController = _DetalhesDoPedidoControllerBase
    with _$DetalhesDoPedidoController;

abstract class _DetalhesDoPedidoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
