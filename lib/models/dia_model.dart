import 'package:appetit/models/pedido_model.dart';

class DiaModel {
  final String dia;
  final double total;
  final List<PedidoModel> pedidos;

  DiaModel({
    this.dia,
    this.total,
    this.pedidos,
  });
}
