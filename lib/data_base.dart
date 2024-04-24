import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ProductDatabase {
  static Database? _database;

  static Future<void> init() async {
    if (_database != null) {
      return;
    }
    try {
      String path = join(await getDatabasesPath(), 'products_database.db');
      _database = await openDatabase(
        path,
        version: 1,
        onCreate: (Database db, int version) async {
          await db.execute(
            'CREATE TABLE products(id INTEGER PRIMARY KEY, name TEXT, price REAL)',
          );
        },
      );
    } catch (ex) {
      print('Error initializing database: $ex');
    }
  }

  static Future<void> insertProduct(Product product) async {
    try {
      await _database!.insert(
        'products',
        product.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    } catch (ex) {
      print('Error inserting product: $ex');
    }
  }

  static Future<List<Product>> getProducts() async {
    try {
      final List<Map<String, dynamic>> maps = await _database!.query('products');
      return List.generate(maps.length, (i) {
        return Product(
          id: maps[i]['id'],
          name: maps[i]['name'],
          price: maps[i]['price'],
        );
      });
    } catch (ex) {
      print('Error getting products: $ex');
      return [];
    }
  }
}

class Product {
  final int? id;
  final String name;
  final double price;

  Product({this.id, required this.name, required this.price});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
    };
  }
}
