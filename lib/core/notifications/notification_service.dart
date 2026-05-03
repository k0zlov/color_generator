import 'dart:async';

abstract interface class NotificationService {
  Stream<String> get errorStream;

  void showError(String error);

  void close();
}

final class NotificationServiceImpl implements NotificationService {
  final StreamController<String> _errorController = .new();

  @override
  Stream<String> get errorStream => _errorController.stream;

  @override
  void showError(String error) {
    _errorController.add(error);
  }

  @override
  void close() {
    _errorController.close();
  }
}
