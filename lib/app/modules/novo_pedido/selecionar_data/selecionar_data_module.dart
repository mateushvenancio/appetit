import 'selecionar_data_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'selecionar_data_page.dart';

class SelecionarDataModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $SelecionarDataController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => SelecionarDataPage()),
      ];

  static Inject get to => Inject<SelecionarDataModule>.of();
}
