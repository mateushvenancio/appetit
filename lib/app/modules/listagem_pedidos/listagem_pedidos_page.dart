import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'listagem_pedidos_controller.dart';

class ListagemPedidosPage extends StatefulWidget {
  final String title;
  const ListagemPedidosPage({Key key, this.title = "ListagemPedidos"})
      : super(key: key);

  @override
  _ListagemPedidosPageState createState() => _ListagemPedidosPageState();
}

class _ListagemPedidosPageState
    extends ModularState<ListagemPedidosPage, ListagemPedidosController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
