import 'package:appetit/shared/main_button.dart';
import 'package:appetit/app/modules/novo_pedido/components/main_slider.dart';
import 'package:appetit/shared/main_app_bar.dart';
import 'package:appetit/shared/main_calendario.dart';
import 'package:appetit/shared/main_chip_text.dart';
import 'package:appetit/shared/main_radio_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'selecionar_data_controller.dart';

class SelecionarDataPage extends StatefulWidget {
  final String title;
  const SelecionarDataPage({Key key, this.title = "SelecionarData"})
      : super(key: key);

  @override
  _SelecionarDataPageState createState() => _SelecionarDataPageState();
}

class _SelecionarDataPageState
    extends ModularState<SelecionarDataPage, SelecionarDataController> {
  //use 'controller' variable to access controller
  int _currentRadio = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: 'Informações para o pedido'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MainChipText(
              'Preencha as informações abaixo para\nconcluir o pedido.',
            ),
            MainSlider(
              atual: 3,
              total: 3,
              title: 'Finalizar pedido',
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'O cliente já pagou?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: MainRadioTile(
                onChanged: (v) {
                  setState(() {
                    _currentRadio = v;
                  });
                },
                value: 0,
                currentValue: _currentRadio,
                label: 'Sim',
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: MainRadioTile(
                onChanged: (v) {
                  setState(() {
                    _currentRadio = v;
                  });
                },
                value: 1,
                currentValue: _currentRadio,
                label: 'Não',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Em que data o pedido foi realizado?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: MainCalendario(),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: MainButton(
                'Finalizar Pedido',
                onPressed: _currentRadio != -1 ? () {} : null,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
