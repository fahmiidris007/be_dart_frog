import 'package:dart_frog/dart_frog.dart';

Middleware greetingProvider() {
  return provider<String>((context) => 'How are you?');
}

// Middleware asyncGreetingProvider() {
//   return provider<Future<String>>((context) async {
//     // doing async process
//     return 'Hello';
//   });
// }
