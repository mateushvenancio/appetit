import 'package:appetit/shared/main_button.dart';
import 'package:appetit/shared/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'pedido_finalizado_controller.dart';

class PedidoFinalizadoPage extends StatefulWidget {
  final String title;
  const PedidoFinalizadoPage({Key key, this.title = "PedidoFinalizado"})
      : super(key: key);

  @override
  _PedidoFinalizadoPageState createState() => _PedidoFinalizadoPageState();
}

class _PedidoFinalizadoPageState
    extends ModularState<PedidoFinalizadoPage, PedidoFinalizadoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(65),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/cozinheiro.png'),
                  SizedBox(height: 13),
                  Text(
                    'Pedido realizado!',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              child: Column(
                children: [
                  Expanded(child: Container()),
                  MainButton(
                    'Fazer um novo pedido',
                    onPressed: () {
                      Modular.to.popUntil(ModalRoute.withName('/novo_pedido'));
                    },
                  ),
                  SizedBox(height: 15),
                  SecondaryButton(
                    'Voltar para a página inicial',
                    color: Color(0XFFB8CC3B),
                    onPressed: () {
                      Modular.to
                          .popUntil(ModalRoute.withName('/listagem_pedidos'));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
