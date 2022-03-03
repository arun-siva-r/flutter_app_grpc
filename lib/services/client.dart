import 'package:flutter_app_grpc/generated/textdemo.pbgrpc.dart';
import 'package:grpc/grpc.dart';

import '../generated/textdemo.pb.dart';

class LocalClient {
  static Future<String> getResponse() async {
    TextServiceClient stub;
    final channel = ClientChannel('192.168.1.6',
        port: 8080,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    stub = TextServiceClient(channel);
    Empty empty = Empty.create();
    ResponseText text = await stub.getText(empty);
    channel.shutdown();
    return text.textValue;
  }
}
