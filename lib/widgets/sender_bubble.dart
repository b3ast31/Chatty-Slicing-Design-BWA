import 'package:flutter/material.dart';

class SenderBubble extends StatelessWidget {
  const SenderBubble(
      {Key? key,
      required this.imageUrl,
      required this.chat,
      required this.time})
      : super(key: key);

  final String imageUrl;
  final String chat;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: Color(0xffEBEFF3),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  chat,
                  style: TextStyle(fontSize: 16, color: Color(0xff505C6B)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  time,
                  style: TextStyle(
                      fontWeight: FontWeight.w300, color: Color(0xff505C6B)),
                )
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Image.asset(
            imageUrl,
            width: 40,
          ),
        ],
      ),
    );
  }
}
