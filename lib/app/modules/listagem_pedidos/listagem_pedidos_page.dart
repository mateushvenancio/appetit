import 'package:appetit/app/modules/listagem_pedidos/components/pedido_list/lista_dias.dart';
import 'package:appetit/app/modules/listagem_pedidos/components/search_field.dart';
import 'package:appetit/app/modules/listagem_pedidos/components/main_button.dart';
import 'package:appetit/app/modules/listagem_pedidos/components/header.dart';
import 'package:appetit/constants/constant_colors.dart';
import 'package:appetit/models/cliente_model.dart';
import 'package:appetit/models/dia_model.dart';
import 'package:appetit/models/pedido_model.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListagemPedidosHeader('Alessandra'),
              SizedBox(height: 20),
              ListagemPedidosButton(
                Icon(Icons.add, color: ConstantColors.primaryColor),
                'Fazer novo pedido',
                () {},
              ),
              SizedBox(height: 22),
              ListagemPedidosSearchField(),
              SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListaDias(
                  pedidos: [
                    DiaModel(
                      dia: '23/05',
                      total: 16.5,
                      pedidos: [
                        PedidoModel(
                          ClienteModel('Mateus', 'https://i.pravatar.cc/300'),
                          'Pão de queijo',
                          16.5,
                        ),
                        PedidoModel(
                          ClienteModel('Henrique', 'https://i.pravatar.cc/300'),
                          'Pão de queijo',
                          16.5,
                        ),
                        PedidoModel(
                          ClienteModel('Venâncio', 'https://i.pravatar.cc/300'),
                          'Pão de queijo',
                          16.5,
                        ),
                        PedidoModel(
                          ClienteModel('Eita', 'https://i.pravatar.cc/300'),
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
                          ClienteModel('Mateus', 'https://i.pravatar.cc/300'),
                          'Pão de queijo',
                          16.5,
                        ),
                        PedidoModel(
                          ClienteModel('Henrique', 'https://i.pravatar.cc/300'),
                          'Pão de queijo',
                          16.5,
                        ),
                        PedidoModel(
                          ClienteModel('Venâncio', 'https://i.pravatar.cc/300'),
                          'Pão de queijo',
                          16.5,
                        ),
                        PedidoModel(
                          ClienteModel('Eita', 'https://i.pravatar.cc/300'),
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
                          ClienteModel('Mateus', 'https://i.pravatar.cc/300'),
                          'Pão de queijo',
                          16.5,
                        ),
                        PedidoModel(
                          ClienteModel('Henrique', 'https://i.pravatar.cc/300'),
                          'Pão de queijo',
                          16.5,
                        ),
                        PedidoModel(
                          ClienteModel('Venâncio', 'https://i.pravatar.cc/300'),
                          'Pão de queijo',
                          16.5,
                        ),
                        PedidoModel(
                          ClienteModel('Eita', 'https://i.pravatar.cc/300'),
                          'Pão de queijo',
                          16.5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
