import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'selecionar_data_controller.g.dart';

@Injectable()
class SelecionarDataController = _SelecionarDataControllerBase
    with _$SelecionarDataController;

abstract class _SelecionarDataControllerBase with Store {
  @observable
  int currentRadio = -1;

  @observable
  DateTime currentDate;

  @action
  changeRadius(int value) => currentRadio = value;

  @action
  changeDate(DateTime value) => currentDate = value;

  @computed
  bool get isRadioSelected => currentRadio != -1;

  @computed
  bool get isDateSelected => currentDate != null;

  String formatDate(DateTime value) {
    return DateFormat('dd/MM/yyyy').format(value);
  }
}
