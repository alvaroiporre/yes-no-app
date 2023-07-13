import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://media.glamour.es/photos/616f8e37d189dd4d546b213a/master/pass/631589.jpeg'),
          ),
        ),
        title: const Text('Mi amor'),
        centerTitle: true,
      ),
    );
  }
}