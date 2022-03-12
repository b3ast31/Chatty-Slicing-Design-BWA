import 'package:chatty_application_2/widgets/chat_input.dart';
import 'package:chatty_application_2/widgets/receiver_bubble.dart';
import 'package:chatty_application_2/widgets/sender_bubble.dart';
import 'package:flutter/material.dart';

class BodyMessagePage extends StatelessWidget {
  const BodyMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            receiverBubble(
                imageUrl: 'assets/images/profile_pic.png',
                chat: 'How are you guys?',
                time: '2:30'),
            receiverBubble(
                imageUrl: 'assets/images/profile_pic.png',
                chat: 'Fine here ;P',
                time: '2:30'),
            SenderBubble(
                imageUrl: 'assets/images/profile_pic.png',
                chat:
                    'Thinking about how to deal\nwith this client from hell...',
                time: '3:15'),
            receiverBubble(
              imageUrl: 'assets/images/profile_pic.png',
              chat: 'Love them',
              time: '23:11',
            ),
          ],
        ),
      ),
    );
  }
}
