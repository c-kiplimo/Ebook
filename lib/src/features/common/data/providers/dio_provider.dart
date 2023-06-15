import 'package:dio/dio.dart';
import 'package:ebook/src/features/common/data/remote/app_dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) => AppDio.getInstance());
