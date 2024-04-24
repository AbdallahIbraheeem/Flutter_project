import 'package:flutter_bloc/flutter_bloc.dart';

import '../data_base.dart';

class ProductsBloc extends Cubit<List<Product>> {
  ProductsBloc() : super([]);

  void addProduct(Product product) {
    state.add(product);
    emit(List.from(state));
  }
}
