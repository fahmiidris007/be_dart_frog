import 'package:be_dart_frog/request_context_extension.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context, String name) async {
  // final request = context.request;
  // final method = request.method;
  // final uri = request.uri;
  // final url = request.url;
  // final body = await request.body();
  // print('==== \n'
  //     'method: $method, uri: $uri, url: $url, body: $body \n'
  //     '==== \n');

  // print('request is handled.');

  // final greeting = await context.read<Future<String>>();
  // use custom extension
  final greeting = await context.readAsync<String>();
  return Response(body: '$greeting $name!');
}
