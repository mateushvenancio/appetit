import 'package:appetit/app/modules/listagem_pedidos/components/pedido_list/lista_dias.dart';
import 'package:appetit/shared/search_field.dart';
import 'package:appetit/app/modules/listagem_pedidos/components/main_button.dart';
import 'package:appetit/app/modules/listagem_pedidos/components/header.dart';
import 'package:appetit/constants/constant_colors.dart';
import 'package:appetit/constants/glow_behavior.dart';
import 'package:appetit/models/cliente_model.dart';
import 'package:appetit/models/dia_model.dart';
import 'package:appetit/models/pedido_model.dart';
import 'package:appetit/shared/main_app_bar.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'listagem_pedidos_controller.dart';
import 'package:flutter/material.dart';

class ListagemPedidosPage extends StatefulWidget {
  @override
  _ListagemPedidosPageState createState() => _ListagemPedidosPageState();
}

class _ListagemPedidosPageState
    extends ModularState<ListagemPedidosPage, ListagemPedidosController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: 'Olá, Alessandra!'),
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: GlowBehavior(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListagemPedidosButton(
                    Icon(Icons.add, color: ConstantColors.primaryColor),
                    'Fazer novo pedido',
                    () {
                      Modular.to.pushNamed('/novo_pedido');
                    },
                  ),
                ),
                SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SearchField(),
                ),
                SizedBox(height: 22),
                ListaDias(
                  pedidos: [
                    DiaModel(
                      dia: '23/05',
                      total: 16.5,
                      pedidos: [
                        PedidoModel(
                          ClienteModel(
                            'Mateus',
                            'https://pbs.twimg.com/profile_images/1311652775089123328/6wi-xEoF.jpg',
                          ),
                          'Pão de queijo',
                          16.5,
                        ),
                        PedidoModel(
                          ClienteModel(
                            'Henrique',
                            'https://pbs.twimg.com/profile_images/1311652775089123328/6wi-xEoF.jpg',
                          ),
                          'Pão de queijo',
                          16.5,
                        ),
                        PedidoModel(
                          ClienteModel(
                            'Venâncio',
                            'https://pbs.twimg.com/profile_images/1311652775089123328/6wi-xEoF.jpg',
                          ),
                          'Pão de queijo',
                          16.5,
                        ),
                        PedidoModel(
                          ClienteModel(
                            'Eita',
                            'https://pbs.twimg.com/profile_images/1311652775089123328/6wi-xEoF.jpg',
                          ),
                          'Pão de queijo',
                          16.5,
                        ),
                      ],
                    ),
                    DiaModel(
                      dia: '23/05',
                      total: 16.5,
                      pedidos: [
                        PedidoModel(
                          ClienteModel(
                            'Mateus',
                            'https://pbs.twimg.com/profile_images/1311652775089123328/6wi-xEoF.jpg',
                          ),
                          'Pão de queijo',
                          16.5,
                        ),
                        PedidoModel(
                          ClienteModel(
                            'Henrique',
                            'https://pbs.twimg.com/profile_images/1311652775089123328/6wi-xEoF.jpg',
                          ),
                          'Pão de queijo',
                          16.5,
                        ),
                        PedidoModel(
                          ClienteModel(
                            'Venâncio',
                            'https://pbs.twimg.com/profile_images/1311652775089123328/6wi-xEoF.jpg',
                          ),
                          'Pão de queijo',
                          16.5,
                        ),
                        PedidoModel(
                          ClienteModel(
                            'Eita',
                            'https://pbs.twimg.com/profile_images/1311652775089123328/6wi-xEoF.jpg',
                          ),
                          'Pão de queijo',
                          16.5,
                        ),
                      ],
                    ),
                    DiaModel(
                      dia: '23/05',
                      total: 16.5,
                      pedidos: [
                        PedidoModel(
                          ClienteModel(
                            'Mateus',
                            'https://pbs.twimg.com/profile_images/1311652775089123328/6wi-xEoF.jpg',
                          ),
                          'Pão de queijo',
                          16.5,
                        ),
                        PedidoModel(
                          ClienteModel(
                            'Henrique',
                            'https://pbs.twimg.com/profile_images/1311652775089123328/6wi-xEoF.jpg',
                          ),
                          'Pão de queijo',
                          16.5,
                        ),
                        PedidoModel(
                          ClienteModel(
                            'Venâncio',
                            'https://pbs.twimg.com/profile_images/1311652775089123328/6wi-xEoF.jpg',
                          ),
                          'Pão de queijo',
                          16.5,
                        ),
                        PedidoModel(
                          ClienteModel(
                            'Eita',
                            'https://pbs.twimg.com/profile_images/1311652775089123328/6wi-xEoF.jpg',
                          ),
                          'Pão de queijo',
                          16.5,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
