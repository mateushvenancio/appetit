import 'package:appetit/models/categoria_model.dart';
import 'package:appetit/models/produto_model.dart';
import 'package:appetit/repositories/repository.dart';

class CategoriaRepository extends IRepository {
  @override
  List getAll() {
    return [
      CategoriaModel(
        nome: 'Cuscuz',
        produtos: [
          ProdutoModel(
            nome: 'Cuscuz simples',
            descricao: 'milho ou arroz',
            preco: 2.25,
            foto:
                'https://www.culinariapravaler.com/image/postagens/2020/01/cuscuz-nordestino-delicioso-e-muito-facil.html.jpg',
            opcoes: [
              'Cuzcus de arroz',
              'Cuzcus de milho',
            ],
          ),
          ProdutoModel(
            nome: 'Cuscuz completo',
            descricao: 'milho ou arroz',
            preco: 3.25,
            foto:
                'https://www.culinariapravaler.com/image/postagens/2020/01/cuscuz-nordestino-delicioso-e-muito-facil.html.jpg',
            opcoes: [
              'Cuzcus de arroz',
              'Cuzcus de milho',
            ],
          ),
        ],
      ),
      CategoriaModel(
        nome: 'Pães',
        produtos: [
          ProdutoModel(
            nome: 'Pão caseiro',
            preco: 2.25,
            foto:
                'https://www.ellafm.com.br/ella/wp-content/uploads/2020/04/P%C3%A3o-Caseiro-Simples-e-R%C3%A1pido.jpg',
            opcoes: [
              'Cuzcus de arroz',
              'Cuzcus de milho',
            ],
          ),
          ProdutoModel(
            nome: 'Pão caseiro completo',
            preco: 3.25,
            foto:
                'https://www.ellafm.com.br/ella/wp-content/uploads/2020/04/P%C3%A3o-Caseiro-Simples-e-R%C3%A1pido.jpg',
            opcoes: [
              'Cuzcus de arroz',
              'Cuzcus de milho',
            ],
          ),
          ProdutoModel(
            nome: 'Misto quente',
            preco: 3,
            foto:
                'https://www.ellafm.com.br/ella/wp-content/uploads/2020/04/P%C3%A3o-Caseiro-Simples-e-R%C3%A1pido.jpg',
            opcoes: [
              'Cuzcus de arroz',
              'Cuzcus de milho',
            ],
          ),
          ProdutoModel(
            nome: 'Lingua de sogra (pq.)',
            preco: 2,
            foto:
                'https://www.ellafm.com.br/ella/wp-content/uploads/2020/04/P%C3%A3o-Caseiro-Simples-e-R%C3%A1pido.jpg',
            opcoes: [
              'Cuzcus de arroz',
              'Cuzcus de milho',
            ],
          ),
          ProdutoModel(
            nome: 'Lingua de sogra (gr.)',
            preco: 3,
            foto:
                'https://www.ellafm.com.br/ella/wp-content/uploads/2020/04/P%C3%A3o-Caseiro-Simples-e-R%C3%A1pido.jpg',
            opcoes: [
              'Cuzcus de arroz',
              'Cuzcus de milho',
            ],
          ),
        ],
      ),
    ];
  }
}
