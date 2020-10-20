import 'package:appetit/app/modules/novo_pedido/components/cliente_tile.dart';
import 'package:appetit/app/modules/novo_pedido/components/main_slider.dart';
import 'package:appetit/constants/constant_colors.dart';
import 'package:appetit/shared/continue_bottom_bar.dart';
import 'package:appetit/shared/main_app_bar.dart';
import 'package:appetit/shared/main_chip_text.dart';
import 'package:appetit/shared/main_text_field.dart';
import 'package:appetit/shared/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'selecionar_cliente_controller.dart';

class SelecionarClientePage extends StatefulWidget {
  final String title;
  const SelecionarClientePage({Key key, this.title = "SelecionarCliente"})
      : super(key: key);

  @override
  _SelecionarClientePageState createState() => _SelecionarClientePageState();
}

class _SelecionarClientePageState
    extends ModularState<SelecionarClientePage, SelecionarClienteController> {
  //use 'controller' variable to access controller

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
              atual: 2,
              total: 3,
              title: 'Para quem você está vendendo?',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SearchField(),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Meus Clientes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Observer(builder: (_) {
              return ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: controller.clienteRepository.getAll().map((e) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                    child: ClienteTile(
                      e,
                      active: controller.existeCliente(e),
                      onTap: (value) {
                        if (controller.existeCliente(e)) {
                          controller.removeCliente(e);
                        } else {
                          controller.addCliente(e);
                        }
                      },
                    ),
                  );
                }).toList(),
              );
            })
          ],
        ),
      ),
      bottomNavigationBar: Observer(builder: (_) {
        return ContinueBottomBar(
          active: controller.quantidadeSelecionados > 0,
          label: '${controller.quantidadeSelecionados} clientes selecionados',
          onTap: () {},
        );
      }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ConstantColors.primaryColor,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
