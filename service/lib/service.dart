import 'dart:io';

import 'package:models/models.dart';

Future<void> main() async {
  final server = await HttpServer.bind(
    InternetAddress.loopbackIPv4,
    int.parse(Platform.environment['PORT'] ?? '8080'),
  );

  server.forEach((req) {
    final HttpRequest(:response) = req;
    response.write(Message(content: 'Hello, World!').toString());
    response.close();
  });
}
