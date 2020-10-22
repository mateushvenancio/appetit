import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'selecionar_data_controller.g.dart';

@Injectable()
class SelecionarDataController = _SelecionarDataControllerBase
    with _$SelecionarDataController;

abstract class _SelecionarDataControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
