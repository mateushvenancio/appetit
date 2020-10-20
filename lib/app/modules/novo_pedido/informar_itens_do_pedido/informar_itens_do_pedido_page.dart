import 'package:appetit/app/modules/novo_pedido/components/main_slider.dart';
import 'package:appetit/app/modules/novo_pedido/components/produto_tile.dart';
import 'package:appetit/constants/constant_colors.dart';
import 'package:appetit/models/produto_model.dart';
import 'package:appetit/repositories/categoria_repository.dart';
import 'package:appetit/shared/continue_bottom_bar.dart';
import 'package:appetit/shared/main_app_bar.dart';
import 'package:appetit/shared/main_bottom_bar.dart';
import 'package:appetit/shared/main_chip_text.dart';
import 'package:appetit/shared/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'informar_itens_do_pedido_controller.dart';

class InformarItensDoPedidoPage extends StatefulWidget {
  @override
  _InformarItensDoPedidoPageState createState() =>
      _InformarItensDoPedidoPageState();
}

class _InformarItensDoPedidoPageState extends ModularState<
    InformarItensDoPedidoPage, InformarItensDoPedidoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: 'Informações para o pedido',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MainChipText(
              'Preencha as informações abaixo para concluir o pedido.',
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
            Observer(builder: (_) {
              print(controller.selecionados.length);
              return ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ...controller.categoriaRepository
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
                                  child: ProdutoTile(
                                    e,
                                    active: controller.itemExiste(e),
                                    onTap: () async {
                                      var _model = await Modular.to.pushNamed(
                                        '/itens_pedidos',
                                        arguments: e,
                                      );
                                      if (_model.runtimeType == ProdutoModel &&
                                          _model != null) {
                                        controller.addItem(_model);
                                      }
                                    },
                                  ),
                                );
                              }).toList(),
                              Divider(height: 28),
                            ],
                          ))
                      .toList(),
                ],
              );
            }),
          ],
        ),
      ),
      bottomNavigationBar: Observer(builder: (_) {
        int _length = controller.selecionados.length;
        return ContinueBottomBar(
          active: _length > 0,
          onTap: () {
            Modular.to.pushNamed('/selecionar_cliente');
          },
          label:
              'Total: R\$ ${controller.somaTotal.toStringAsFixed(2).replaceAll('.', ',')}',
        );
      }),
    );
  }
}
