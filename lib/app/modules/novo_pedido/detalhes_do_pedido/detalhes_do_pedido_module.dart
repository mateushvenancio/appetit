import 'package:appetit/app/modules/novo_pedido/informar_itens_do_pedido/informar_itens_do_pedido_module.dart';

import 'detalhes_do_pedido_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'detalhes_do_pedido_page.dart';

class DetalhesDoPedidoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $DetalhesDoPedidoController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => DetalhesDoPedidoPage(args.data),
        ),
      ];

  static Inject get to => Inject<DetalhesDoPedidoModule>.of();
}
