import 'package:appetit/app/modules/novo_pedido/components/main_slider.dart';
import 'package:appetit/app/modules/novo_pedido/components/produto_tile.dart';
import 'package:appetit/constants/constant_colors.dart';
import 'package:appetit/models/categoria_model.dart';
import 'package:appetit/models/produto_model.dart';
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
                ...[
                  CategoriaModel(
                    nome: 'Cuscuz',
                    produtos: [
                      ProdutoModel(
                        nome: 'Cuscuz simples',
                        descricao: 'milho ou arroz',
                        preco: 2.25,
                        foto:
                            'https://www.culinariapravaler.com/image/postagens/2020/01/cuscuz-nordestino-delicioso-e-muito-facil.html.jpg',
                      ),
                      ProdutoModel(
                        nome: 'Cuscuz completo',
                        descricao: 'milho ou arroz',
                        preco: 3.25,
                        foto:
                            'https://www.culinariapravaler.com/image/postagens/2020/01/cuscuz-nordestino-delicioso-e-muito-facil.html.jpg',
                      ),
                    ],
                  ),
                  CategoriaModel(
                    nome: 'Pães',
                    produtos: [
                      ProdutoModel(
                        nome: 'Pão caseiro',
                        preco: 2.25,
                        foto:
                            'https://www.ellafm.com.br/ella/wp-content/uploads/2020/04/P%C3%A3o-Caseiro-Simples-e-R%C3%A1pido.jpg',
                      ),
                      ProdutoModel(
                        nome: 'Pão caseiro completo',
                        preco: 3.25,
                        foto:
                            'https://www.ellafm.com.br/ella/wp-content/uploads/2020/04/P%C3%A3o-Caseiro-Simples-e-R%C3%A1pido.jpg',
                      ),
                      ProdutoModel(
                        nome: 'Misto quente',
                        preco: 3,
                        foto:
                            'https://www.ellafm.com.br/ella/wp-content/uploads/2020/04/P%C3%A3o-Caseiro-Simples-e-R%C3%A1pido.jpg',
                      ),
                      ProdutoModel(
                        nome: 'Lingua de sogra (pq.)',
                        preco: 2,
                        foto:
                            'https://www.ellafm.com.br/ella/wp-content/uploads/2020/04/P%C3%A3o-Caseiro-Simples-e-R%C3%A1pido.jpg',
                      ),
                      ProdutoModel(
                        nome: 'Lingua de sogra (gr.)',
                        preco: 3,
                        foto:
                            'https://www.ellafm.com.br/ella/wp-content/uploads/2020/04/P%C3%A3o-Caseiro-Simples-e-R%C3%A1pido.jpg',
                      ),
                    ],
                  ),
                ]
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
                                child: ProdutoTile(e),
                              );
                            }).toList(),
                            Divider(
                              height: 28,
                            ),
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
