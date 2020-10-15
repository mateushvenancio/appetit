import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  String email = '';
  @observable
  String senha = '';

  @action
  setEmail(String value) => email = value;
  @action
  setSenha(String value) => senha = value;

  @computed
  bool get isLoginValid => email.contains('@') && senha.length > 6;
}
