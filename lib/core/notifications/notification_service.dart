import 'dart:async';

abstract interface class NotificationService {
  Stream<String> get errorStream;

  void showError(String error);

  void dispose();
}

class NotificationServiceImpl implements NotificationService {
  final StreamController<String> _errorController = .new();

  @override
  Stream<String> get errorStream => _errorController.stream;

  @override
  void showError(String error) {
    _errorController.add(error);
  }

  // ignore: proper_super_calls
  @override
  void dispose() {
    _errorController.close();
  }
}
