import 'package:flutter/material.dart';

import '../theme.dart';

class HeaderMessagePage extends StatelessWidget {
  const HeaderMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 115.0,
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.0)),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/grup.png',
            width: 55.0,
          ),
          SizedBox(
            width: 12.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jakarta Fair',
                style: TextStyle(
                    color: blackColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                '14,209 members',
                style: TextStyle(color: greyColor, fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.call,
            size: 28,
          ),
        ],
      ),
    );
  }
}
