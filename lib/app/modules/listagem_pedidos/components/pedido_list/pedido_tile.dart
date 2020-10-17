import 'package:appetit/models/pedido_model.dart';
import 'package:flutter/material.dart';

class PedidoTile extends StatelessWidget {
  final PedidoModel pedido;

  PedidoTile(this.pedido);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(pedido?.items ?? 'Items'),
    );
  }
}
