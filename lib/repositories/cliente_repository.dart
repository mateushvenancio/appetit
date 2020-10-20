import 'package:appetit/models/cliente_model.dart';
import 'package:appetit/repositories/repository.dart';

class ClienteRepository extends IRepository {
  @override
  List getAll() {
    return [
      ClienteModel(
        'Mateus',
        'https://neo-labor.com/wp-content/uploads/2016/08/13.jpg',
      ),
      ClienteModel(
        'Justine Marshall',
        'https://neo-labor.com/wp-content/uploads/2016/08/13.jpg',
      ),
      ClienteModel(
        'Bairam Frootan',
        'https://neo-labor.com/wp-content/uploads/2016/08/13.jpg',
      ),
    ];
  }
}
