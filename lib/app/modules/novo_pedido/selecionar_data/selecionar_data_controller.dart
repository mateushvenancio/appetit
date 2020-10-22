import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'selecionar_data_controller.g.dart';

@Injectable()
class SelecionarDataController = _SelecionarDataControllerBase
    with _$SelecionarDataController;

abstract class _SelecionarDataControllerBase with Store {
  @observable
  int currentRadio = -1;

  @action
  changeRadius(int value) => currentRadio = value;

  @computed
  bool get isRadioSelected => currentRadio != -1;
}
