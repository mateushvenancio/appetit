import 'package:appetit/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class ListagemPedidosHeader extends StatelessWidget {
  final String nome;

  ListagemPedidosHeader(this.nome);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Olá, ${nome ?? 'Alessandra'}!',
            style: TextStyle(
              color: ConstantColors.primaryColor,
              fontSize: 27,
            ),
          ),
          SizedBox(height: 3),
          Container(
            height: 2,
            width: width * 0.75,
            color: Color(0xFFB8CC3B),
          ),
        ],
      ),
    );
  }
}
