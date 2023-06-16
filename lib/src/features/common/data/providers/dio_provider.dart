import 'package:dio/dio.dart';
<<<<<<< HEAD
import 'package:ebook/src/features/common/data/remote/app_dio.dart';
=======
import 'package:flutter_ebook_app/src/features/common/data/remote/app_dio.dart';
>>>>>>> fix-style
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) => AppDio.getInstance());
