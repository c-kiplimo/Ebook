import 'package:dartz/dartz.dart';
import 'package:ebook/features/common/constants/api.dart';
import 'package:ebook/features/common/data/repositories/book/book_repository.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/data/failures/http_failure.dart';
import '../../../common/data/models/category_feed.dart';
import '../../../common/data/providers/dio_provider.dart';

class BookDetailsRepository extends BookRepository {
  BookDetailsRepository(super.httpClient);

  Future<Either<HttpFailure, CategoryFeed>> getRelatedFeed(String url) {
    String stripedUrl = url.replaceAll(ApiEndpoints.baseURL, '');
    final failureOrSuccess = getCategory(stripedUrl);
    return failureOrSuccess;
  }
}

final bookDetailsRepositoryProvider =
    Provider.autoDispose<BookDetailsRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return BookDetailsRepository(dio);
});
