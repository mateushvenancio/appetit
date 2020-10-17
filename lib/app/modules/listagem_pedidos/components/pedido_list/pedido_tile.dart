import 'package:appetit/models/pedido_model.dart';
import 'package:flutter/material.dart';

class PedidoTile extends StatelessWidget {
  final PedidoModel pedido;

  PedidoTile(this.pedido);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(pedido.cliente.foto),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            pedido?.items ?? 'Items',
            style: TextStyle(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'R\$ ' +
                (pedido?.total ?? 0).toStringAsFixed(2).replaceAll('.', ','),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      subtitle: Text(
        pedido?.items ?? '',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
