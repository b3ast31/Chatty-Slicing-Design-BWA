import 'package:flutter/material.dart';

import '../theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.text,
      required this.time,
      required this.unread})
      : super(key: key);

  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 55.0,
            height: 55.0,
          ),
          SizedBox(
            width: 12.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(
                text,
                style: unread
                    ? subtitleTextStyle.copyWith(
                        color: blackColor,
                      )
                    : subtitleTextStyle,
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subtitleTextStyle,
          )
        ],
      ),
    );
  }
}
