import 'selecionar_cliente_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'selecionar_cliente_page.dart';

class SelecionarClienteModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $SelecionarClienteController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => SelecionarClientePage()),
      ];

  static Inject get to => Inject<SelecionarClienteModule>.of();
}
