import 'package:appetit/models/cliente_model.dart';

class PedidoModel {
  ClienteModel cliente;
  String items;
  double total;

  PedidoModel(
    this.cliente,
    this.items,
    this.total,
  );
}
