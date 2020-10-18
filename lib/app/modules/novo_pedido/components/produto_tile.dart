import 'package:appetit/constants/constant_colors.dart';
import 'package:appetit/models/produto_model.dart';
import 'package:flutter/material.dart';

class ProdutoTile extends StatelessWidget {
  final ProdutoModel produto;

  ProdutoTile(this.produto);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 70,
      width: double.infinity,
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(5),
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
                      ),
                    ),
                    if (produto.descricao != null)
                      Text(
                        produto.descricao,
                        style: TextStyle(
                          color: ConstantColors.lightDark,
                          fontSize: 16,
                        ),
                      ),
                  ],
                ),
              ),
              Text(
                'R\$ ' + produto.preco.toStringAsFixed(2).replaceAll('.', ','),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
