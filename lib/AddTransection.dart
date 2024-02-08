import 'package:flutter/material.dart';
import 'package:uu_loginui/Constants.dart';
import 'package:uu_loginui/Wallet.dart';

class AddTransection extends StatelessWidget {
  AddTransection({super.key});

  final amountcontroller = TextEditingController();
  final notecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Add Transection',
          style: TextStyle(color: Colors.white)
        ),iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          InputText(
            name: 'Note',
            prefixicon: Icons.note_alt_outlined,
            controller: notecontroller,
          ),
          SizedBox(
            height: 20,
          ),
          InputText(
            name: 'Amount',
            prefixicon: Icons.attach_money_outlined,
            controller: amountcontroller,
            keybordtype: TextInputType.number,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Roundbutton(name: 'Income',onTap:  () {
                Navigator.pop(context);}),
              Roundbutton(name: 'Expenses',onTap:  () {
                Navigator.pop(context);})
            ],
          ),
        ],
      ),
    );
  }
}
