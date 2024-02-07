import 'package:flutter/material.dart';
import 'package:uu_loginui/Home.dart';
import 'package:uu_loginui/LoginUi.dart';
import 'package:uu_loginui/Profile.dart';
import 'package:uu_loginui/SignupUi.dart';
import 'package:uu_loginui/Wallet.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  int myindex = 0;
  List<Widget> bottomnav = [Home(), Center(child: Text('ChatBot')),Wallet(),Profile()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: bottomnav[myindex],
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: true,
          // backgroundColor: Colors.purple.shade800,
          selectedItemColor: Colors.purple.shade500,
          unselectedItemColor: Colors.purple.shade200,
          iconSize: 30,
          onTap: (index) {
            setState(() {
              myindex = index;
            });
          },
          currentIndex: myindex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.mark_unread_chat_alt_outlined),
                label: 'Chat Bot'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet_outlined,),
                label: 'Wallet'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_pin_outlined), label: 'profile'),

          ],
        ),
      ),
    );
  }
}
