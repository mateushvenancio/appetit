import 'package:appetit/app/modules/listagem_pedidos/listagem_pedidos_module.dart';
import 'package:appetit/app/modules/login/login_module.dart';
import 'package:appetit/app/modules/novo_pedido/detalhes_do_pedido/detalhes_do_pedido_module.dart';
import 'package:appetit/app/modules/novo_pedido/informar_itens_do_pedido/informar_itens_do_pedido_module.dart';
import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:appetit/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: LoginModule()),
        ModularRouter('/listagem_pedidos', module: ListagemPedidosModule()),
        ModularRouter('/novo_pedido', module: InformarItensDoPedidoModule()),
        ModularRouter('/itens_pedidos', module: DetalhesDoPedidoModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
