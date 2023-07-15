import 'package:flutter/material.dart';
import 'package:yes_no_app1/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: 'hola amor', fromWho: FromWho.me),
    Message(text: 'ya llegaste del trabajo?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage () async {
    //TODO: implementar metodo
  }
}
