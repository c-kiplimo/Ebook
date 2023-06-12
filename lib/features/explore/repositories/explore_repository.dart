import 'package:dartz/dartz.dart';
import 'package:ebook/features/common/constants/api.dart';
import 'package:ebook/features/common/data/failures/http_failure.dart';
import 'package:ebook/features/common/data/providers/dio_provider.dart';
import 'package:ebook/features/common/data/repositories/book/book_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/data/models/category_feed.dart';

class ExploreRepository extends BookRepository {
  ExploreRepository(super.httpClient);

  Future<Either<HttpFailure, CategoryFeed>> getGenreFeed(String url) {
    String stripedUrl = url.replaceAll(ApiEndpoints.baseURL, '');
    final failureOrSuccess = getCategory(stripedUrl);
    return failureOrSuccess;
  }
}

final exploreRepositoryProvider =
    Provider.autoDispose<ExploreRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return ExploreRepository(dio);
});
