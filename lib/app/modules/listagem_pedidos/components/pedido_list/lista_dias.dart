import 'package:appetit/app/modules/listagem_pedidos/components/pedido_list/pedido_tile.dart';
import 'package:appetit/models/dia_model.dart';
import 'package:flutter/material.dart';

class ListaDias extends StatelessWidget {
  final List<DiaModel> pedidos;

  ListaDias({
    this.pedidos,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: pedidos?.length ?? 0,
      itemBuilder: (context, index) {
        DiaModel _dia = pedidos[index];
        return ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Text(
              'Em ${_dia.dia} você vendeu R\$ ${_dia.total.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 21),
            ),
            ..._dia.pedidos.map((e) => PedidoTile(e)).toList(),
          ],
        );
      },
    );
  }
}
