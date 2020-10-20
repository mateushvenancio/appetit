import 'package:appetit/models/produto_model.dart';
import 'package:appetit/repositories/categoria_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'informar_itens_do_pedido_controller.g.dart';

@Injectable()
class InformarItensDoPedidoController = _InformarItensDoPedidoControllerBase
    with _$InformarItensDoPedidoController;

abstract class _InformarItensDoPedidoControllerBase with Store {
  final categoriaRepository = Modular.get<CategoriaRepository>();

  @observable
  ObservableList<ProdutoModel> selecionados = <ProdutoModel>[].asObservable();

  @action
  addItem(ProdutoModel value) => selecionados.add(value);

  @action
  bool itemExiste(ProdutoModel value) {
    return selecionados.firstWhere(
          (_e) => _e.nome == value.nome,
          orElse: () => null,
        ) !=
        null;
  }

  double get somaTotal {
    double _total = 0;

    if (selecionados.length <= 0) return _total;

    selecionados.forEach((e) {
      _total = _total + e.preco;
    });

    return _total;
  }
}
