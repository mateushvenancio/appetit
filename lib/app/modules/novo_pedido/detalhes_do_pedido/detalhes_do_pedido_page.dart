import 'package:appetit/app/modules/novo_pedido/components/produto_tile.dart';
import 'package:appetit/constants/constant_colors.dart';
import 'package:appetit/models/produto_model.dart';
import 'package:appetit/shared/main_app_bar.dart';
import 'package:appetit/shared/main_bottom_bar.dart';
import 'package:appetit/shared/main_chip_text.dart';
import 'package:appetit/shared/main_radio_tile.dart';
import 'package:appetit/shared/main_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'detalhes_do_pedido_controller.dart';

class DetalhesDoPedidoPage extends StatefulWidget {
  final ProdutoModel pedido;

  DetalhesDoPedidoPage(this.pedido);

  @override
  _DetalhesDoPedidoPageState createState() => _DetalhesDoPedidoPageState();
}

class _DetalhesDoPedidoPageState
    extends ModularState<DetalhesDoPedidoPage, DetalhesDoPedidoController> {
  int _currentRadius = -1;
  int _quantidade = 1;

  List<Widget> _organizaOpcoesDoPedido(List<String> opcoes) {
    if (opcoes == null) return [];

    List<Widget> _tiles = [];

    for (int i = 0; i < opcoes.length; i++) {
      _tiles.add(Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MainRadioTile(
            label: opcoes[i],
            value: i,
            currentValue: _currentRadius,
            onChanged: (value) {
              setState(() {
                _currentRadius = i;
              });
            },
          ),
          SizedBox(height: 8),
        ],
      ));
    }

    return _tiles;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: 'Detalhes do pedido',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MainChipText(
              'Caso queira, aproveite para adicionar \nalguma observação para este pedido.',
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ProdutoTile(widget.pedido),
            ),
            Divider(height: 26),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
              child: Text(
                'Opções',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Escolha uma das opções de massas\ndisponíveis abaixo.',
                style: TextStyle(
                  fontSize: 16,
                  color: ConstantColors.lightDark,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: _organizaOpcoesDoPedido(widget.pedido.opcoes),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
              child: Text(
                'Observações',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: MainTextField(
                labelText: 'Deseja adicionar alguma obs.?',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MainBottomBar(
        active: _currentRadius >= 0,
        total: widget.pedido.preco,
        quantidade: _quantidade,
        onButtonTap: () {
          Modular.to.pop(widget.pedido);
        },
        onAdd: () {
          setState(() {
            _quantidade = _quantidade + 1;
          });
        },
        onRemove: () {
          if (_quantidade > 1)
            setState(() {
              _quantidade = _quantidade - 1;
            });
        },
      ),
    );
  }
}
