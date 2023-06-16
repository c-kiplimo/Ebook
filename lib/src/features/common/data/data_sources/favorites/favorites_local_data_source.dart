<<<<<<< HEAD


import '../../models/category_feed.dart';
=======
import 'package:flutter_ebook_app/src/features/common/data/models/category_feed.dart';
>>>>>>> fix-style

abstract class FavoritesLocalDataSource {
  const FavoritesLocalDataSource();

  Future<void> addBook(Entry book, String id);

  Future<void> deleteBook(String id);

  Stream<List<Entry>> favoritesListStream();
}
