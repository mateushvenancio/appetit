import 'package:appetit/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class ListagemPedidosSearchField extends StatelessWidget {
  final Function(String) onChanged;

  ListagemPedidosSearchField({
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: ConstantColors.primaryColor,
        ),
        hintText: 'Digite a sua busca aqui',
      ),
    );
  }
}
