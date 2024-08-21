import 'package:be_dart_frog/cache_async_greeting_provider.dart';
import 'package:dart_frog/dart_frog.dart';

// Handler middleware(Handler handler) {
//   return (context) async {
//     // code before request is handled
//     print('saving name to database...');
//     // handler.call(context);
//     final response = await handler(context);

//     // code after request is handled
//     print('making new response...');
//     final newResponse = response.copyWith(
//       body: '${await response.body()} how are you?',
//     );
//     return newResponse;
//   };
// }

Handler middleware(Handler handler) {
  return handler.use(
    // greetingProvider(),
    cacheAsyncGreetingProvider(),
  );
}
