import 'package:dart_frog/dart_frog.dart';

// proses ini digunakan untuk mencegah proses async yang berulang

String? result;

Middleware cacheAsyncGreetingProvider() {
  return provider<Future<String>>((context) async {
    if (result == null) {
      print('Cache Async greeting provider is called');
      // doing async process
      result = 'Hello';
    }
    return result!;
  });
}
