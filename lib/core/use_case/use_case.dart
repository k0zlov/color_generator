import 'package:color_generator/core/failures/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class UseCase<T, P> {
  const UseCase();

  Future<Result<T>> call(P params);
}

class NoParams {}

typedef Result<T> = Either<Failure, T>;
