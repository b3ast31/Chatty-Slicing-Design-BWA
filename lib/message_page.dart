import 'package:chatty_application_2/theme.dart';
import 'package:chatty_application_2/widgets/body_message_page.dart';
import 'package:chatty_application_2/widgets/chat_input.dart';
import 'package:chatty_application_2/widgets/header_message_page.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ChatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Color(0xffF8FAFC),
      body: Column(
        children: [HeaderMessagePage(), BodyMessagePage()],
      ),
    );
  }
}
