import 'package:chatty_application_2/theme.dart';
import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 30),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(75),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Type Message...',
            style: TextStyle(
                fontWeight: FontWeight.w300, fontSize: 16.0, color: greyColor),
          ),
          Icon(
            Icons.send,
            size: 35.0,
          )
        ],
      ),
    );
  }
}
