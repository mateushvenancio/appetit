import 'pedido_finalizado_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pedido_finalizado_page.dart';

class PedidoFinalizadoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $PedidoFinalizadoController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => PedidoFinalizadoPage()),
      ];

  static Inject get to => Inject<PedidoFinalizadoModule>.of();
}
