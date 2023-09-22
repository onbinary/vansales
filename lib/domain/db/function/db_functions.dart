import '../model/product_model.dart';

List<ProductModel> productsList = [];

void addProduct(ProductModel value) {
  productsList.add(value);
}

List<ProductModel> getProducts() {
  return productsList;
}
