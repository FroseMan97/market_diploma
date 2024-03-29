import 'package:market/domain/entity/product_entity.dart';

abstract class ProductRepository {
  Future<List<ProductEntity>> getProductsByCategoryID(String categoryID);
  Future<ProductEntity> getProductByID(String productID);
  Future<List<ProductEntity>> getProductsByManufactureID(String manufactureID);
  Future<List<ProductEntity>> getProducts();
  Future<List<ProductEntity>> getRandomProducts(int quantity);
}
