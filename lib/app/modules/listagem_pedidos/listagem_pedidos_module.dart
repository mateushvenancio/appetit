import 'listagem_pedidos_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'listagem_pedidos_page.dart';

class ListagemPedidosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $ListagemPedidosController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => ListagemPedidosPage()),
      ];

  static Inject get to => Inject<ListagemPedidosModule>.of();
}
