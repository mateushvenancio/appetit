import 'package:appetit/app/modules/novo_pedido/components/main_slider.dart';
import 'package:appetit/app/modules/novo_pedido/components/produto_tile.dart';
import 'package:appetit/constants/constant_colors.dart';
import 'package:appetit/repositories/categoria_repository.dart';
import 'package:appetit/shared/main_app_bar.dart';
import 'package:appetit/shared/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'informar_itens_do_pedido_controller.dart';

class InformarItensDoPedidoPage extends StatefulWidget {
  @override
  _InformarItensDoPedidoPageState createState() =>
      _InformarItensDoPedidoPageState();
}

class _InformarItensDoPedidoPageState extends ModularState<
    InformarItensDoPedidoPage, InformarItensDoPedidoController> {
  static const _padding = const EdgeInsets.all(15);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: 'Informações para o pedido',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: _padding,
              child: Text(
                'Preencha as informações abaixo para concluir o pedido.',
                style: TextStyle(
                  fontSize: 18,
                  color: ConstantColors.lightDark,
                ),
              ),
            ),
            MainSlider(
              title: 'O que você está vendendo?',
              atual: 1,
              total: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SearchField(),
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ...CategoriaRepository()
                    .getAll()
                    .map((e) => ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 15,
                              ),
                              child: Text(
                                e.nome ?? '',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            ...e.produtos.map((e) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 5,
                                ),
                                child: ProdutoTile(e, onTap: () {
                                  Modular.to.pushNamed(
                                    '/itens_pedidos',
                                    arguments: e,
                                  );
                                }),
                              );
                            }).toList(),
                            Divider(height: 28),
                          ],
                        ))
                    .toList(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
