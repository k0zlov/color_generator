import 'package:color_generator/core/failures/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class UseCase<ReturnT, ParamsT> {
  const UseCase();

  Future<Result<ReturnT>> call(ParamsT params);
}

class NoParams {}

typedef Result<ReturnT> = Either<Failure, ReturnT>;
