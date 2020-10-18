import 'informar_itens_do_pedido_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'informar_itens_do_pedido_page.dart';

class InformarItensDoPedidoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $InformarItensDoPedidoController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => InformarItensDoPedidoPage()),
      ];

  static Inject get to => Inject<InformarItensDoPedidoModule>.of();
}
