import 'package:flutter/material.dart';

class ListagemPedidosButton extends StatelessWidget {
  final String label;
  final Function onTap;
  final Icon icon;

  const ListagemPedidosButton(
    this.icon,
    this.label,
    this.onTap,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(5),
        child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: icon,
              ),
              Text(label?.toUpperCase() ?? ''),
            ],
          ),
        ),
      ),
    );
  }
}
