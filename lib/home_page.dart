import 'package:chatty_application_2/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:chatty_application_2/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: greenColor,
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40.0,
                ),
                Image.asset(
                  'assets/images/profile_pic.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('Sabrina Carpenter',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: whiteColor,
                    )),
                SizedBox(
                  height: 2.0,
                ),
                Text('Travel Freelancer',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: lightBlueColor,
                    )),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend1.png',
                        name: 'Joshuer',
                        text: 'Sorry, you`re not my ty...',
                        time: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend1.png',
                        name: 'Gabriella',
                        text: 'I saw it cleary and mig...',
                        time: '2:30',
                        unread: false,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/grup.png',
                        name: 'Jakarta Fair',
                        text: 'Why does everyone co...',
                        time: '11:11',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/grup.png',
                        name: 'Angga',
                        text: 'Here here we can go...',
                        time: '7:11',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/grup.png',
                        name: 'Bentley',
                        text: 'The car which does not...',
                        time: '7:11',
                        unread: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
