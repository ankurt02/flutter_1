import 'package:flutter_1/models/catalog.dart';

class CartModel {
  // Catalog field
  late CatalogModel _catalog;

  // Collection of IDs
  final List<int> _itemId = [];

  // Get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Item> get items => _itemId.map((id) => _catalog.getByID(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Item
  void add(Item item) {
    _itemId.add(item.id);
  }

  // Remove Item
  void remove(Item item) {
    _itemId.remove(item.id);
  }
}
