import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'pedido_finalizado_controller.g.dart';

@Injectable()
class PedidoFinalizadoController = _PedidoFinalizadoControllerBase
    with _$PedidoFinalizadoController;

abstract class _PedidoFinalizadoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
