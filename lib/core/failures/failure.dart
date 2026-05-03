sealed class Failure {
  final String errorMessage;

  const Failure({
    required this.errorMessage,
  });

  @override
  String toString() {
    return 'Failure{errorMessage: $errorMessage}';
  }
}

final class CacheFailure extends Failure {
  const CacheFailure({required super.errorMessage});

  @override
  String toString() {
    return 'CacheFailure{errorMessage: ${super.errorMessage}';
  }
}
