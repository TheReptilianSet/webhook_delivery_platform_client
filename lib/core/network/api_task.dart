import 'package:fpdart/fpdart.dart';

import 'app_failure.dart';
import 'failure_mapper.dart';

TaskEither<AppFailure, T> apiTask<T>(Future<T> Function() operation) {
  return TaskEither.tryCatch(operation, FailureMapper.fromException);
}
