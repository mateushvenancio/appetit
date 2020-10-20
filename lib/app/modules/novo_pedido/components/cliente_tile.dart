import 'package:appetit/constants/constant_colors.dart';
import 'package:appetit/models/cliente_model.dart';
import 'package:flutter/material.dart';

class ClienteTile extends StatelessWidget {
  final ClienteModel cliente;
  final bool active;
  final Function(ClienteModel) onTap;

  ClienteTile(this.cliente, {this.active = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: active ? ConstantColors.primaryColor : Colors.white,
      elevation: 2,
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        onTap: () {
          if (onTap != null) onTap(cliente);
        },
        child: Container(
          height: 70,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    cliente.foto ??
                        'https://neo-labor.com/wp-content/uploads/2016/08/13.jpg',
                  ),
                ),
              ),
              Text(
                cliente.nome ?? 'Nome',
                style: TextStyle(
                  color: active ? Colors.white : Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
