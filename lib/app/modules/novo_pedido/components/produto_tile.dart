import 'package:appetit/constants/constant_colors.dart';
import 'package:appetit/models/produto_model.dart';
import 'package:flutter/material.dart';

class ProdutoTile extends StatelessWidget {
  final ProdutoModel produto;
  final Function onTap;
  final bool active;

  ProdutoTile(this.produto, {this.onTap, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      child: Material(
        color: active ? ConstantColors.primaryColor : Colors.white,
        elevation: 2,
        borderRadius: BorderRadius.circular(5),
        child: InkWell(
          onTap: () {
            if (onTap != null) {
              onTap();
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 15),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(produto.foto),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        produto.nome ?? '',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: active ? Colors.white : Colors.black,
                        ),
                      ),
                      if (produto.descricao != null)
                        Text(
                          produto.descricao,
                          style: TextStyle(
                            color: active
                                ? Colors.white
                                : ConstantColors.lightDark,
                            fontSize: 16,
                          ),
                        ),
                    ],
                  ),
                ),
                Text(
                  'R\$ ' +
                      produto.preco.toStringAsFixed(2).replaceAll('.', ','),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: active ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
