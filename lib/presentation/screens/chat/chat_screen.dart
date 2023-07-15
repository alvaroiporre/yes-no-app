import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app1/domain/entities/message.dart';
import 'package:yes_no_app1/presentation/providers/chat_provider.dart';
import 'package:yes_no_app1/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app1/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app1/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media.glamour.es/photos/616f8e37d189dd4d546b213a/master/pass/631589.jpeg'),
          ),
        ),
        title: const Text('Mi amor'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: chatProvider.messagesList.length,
                    itemBuilder: (context, index) {
                      final message = chatProvider.messagesList[index];
                      return (message.fromWho == FromWho.hers)
                          ? HerMessageBubble()
                          : MyMessageBubble(message: message);
                    })),
            // text box of immage
            MessageFieldBox(
              //onValue: (value) => chatProvider.sendMessage(value),
              onValue: chatProvider.sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}
