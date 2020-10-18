import 'package:appetit/models/produto_model.dart';

class CategoriaModel {
  final String nome;
  final List<ProdutoModel> produtos;

  CategoriaModel({
    this.nome,
    this.produtos,
  });
}
