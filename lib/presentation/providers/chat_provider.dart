import 'package:flutter/material.dart';
import 'package:yes_no_app1/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messagesList = [
    Message(text: 'hola amor', fromWho: FromWho.me),
    Message(text: 'ya llegaste del trabajo?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messagesList.add(newMessage);

    notifyListeners();
  }
}
