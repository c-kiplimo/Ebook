import 'package:dartz/dartz.dart';
import 'package:ebook/features/common/constants/api.dart';
import 'package:ebook/features/common/data/failures/http_failure.dart';
import 'package:ebook/features/common/data/providers/dio_provider.dart';
import 'package:ebook/features/common/data/repositories/book/book_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/data/models/category_feed.dart';

class HomeRepository extends BookRepository {
  HomeRepository(super.httpClient);

  Future<Either<HttpFailure, CategoryFeed>> getPopularHomeFeed() {
    final failureOrSuccess = getCategory(ApiEndpoints.popular);
    return failureOrSuccess;
  }

  Future<Either<HttpFailure, CategoryFeed>> getRecentHomeFeed() {
    final failureOrSuccess = getCategory(ApiEndpoints.recent);
    return failureOrSuccess;
  }
}

final homeRepositoryProvider = Provider.autoDispose<HomeRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return HomeRepository(dio);
});
