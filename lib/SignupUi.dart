import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uu_loginui/Captcha.dart';
import 'package:uu_loginui/Constants.dart';
import 'package:uu_loginui/Home_Screen.dart';
import 'package:uu_loginui/LoginUi.dart';

class SignupUi extends StatefulWidget {
  const SignupUi({super.key});

  @override
  State<SignupUi> createState() => _SignupUiState();
}

class _SignupUiState extends State<SignupUi> {

  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final captchacontroller = TextEditingController();


  FirebaseAuth auth=FirebaseAuth.instance;

  final firestore=FirebaseFirestore.instance.collection('userInfo');

  String selectedValue = 'Select college';
  bool passState = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.purple.shade900,
              Colors.purple.shade800,
              Colors.purple.shade400
            ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Signup',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        'Welcome to BuddySync',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(

                  child: Container(
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 5, left: 10, right: 10, bottom: 5),
                        child: Column(
                          children: [
                            const SizedBox(height: 30),
                            InputText(
                              name: 'Name',
                              prefixicon: Icons.person_outline,
                              controller: namecontroller,
                            ),
                            InputText(
                              name: 'Email',
                              prefixicon: Icons.email_outlined,
                              controller: emailcontroller,
                            ),
                            Container(
                              height: 60,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.purple.shade50,
                                border:
                                Border.all(color: Colors.purple.shade900),
                              ),
                              child: Theme(
                                data: Theme.of(context).copyWith(
                                  canvasColor: Colors.purple.shade50,
                                ),
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  value: selectedValue,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedValue = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    'Select college',
                                    'United University',
                                    'UIMS',
                                    'UIM',
                                    'UGI',
                                    'UIT'
                                  ].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value,
                                          style: TextStyle(
                                              color: Colors.purple.shade900)),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextFormField(
                                controller: passwordcontroller,
                                style: TextStyle(color: Colors.purple.shade900),
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: !passState,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.purple.shade50,
                                  label: const Text('Password'),
                                  labelStyle:
                                  const TextStyle(color: Colors.purple),
                                  prefixIcon: Icon(
                                    Icons.lock_outline,
                                    color: Colors.purple.shade900,
                                  ),
                                  suffixIcon: IconButton(
                                    color: Colors.purple.shade900,
                                    onPressed: () {
                                      setState(() {
                                        passState = !passState;
                                      });
                                    },
                                    icon: Icon((passState)
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    splashRadius: 10,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.purple.shade700),
                                      borderRadius: BorderRadius.circular(10)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.purple.shade900),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                            InputText(
                              name: 'Enter Captcha',
                              prefixicon: Icons.password_outlined,
                              controller: captchacontroller,
                              keybordtype:TextInputType.number,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.purple.shade900,
                                            blurRadius: 5)
                                      ],
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.purple.shade200),
                                  child: Center(
                                    child: Text(
                                      '${Captcha().getx()}',
                                      style: TextStyle(
                                          color: Colors.red.shade400,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          fontFamily: 'rubikm'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          Captcha().setx();
                                        });
                                      },
                                      icon: const Icon(Icons.refresh),
                                      color: Colors.purpleAccent,
                                      splashColor: Colors.purpleAccent.shade100,
                                      splashRadius: 20,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Roundbutton(
                              name: 'Signup',
                              onTap:  () {
                                String email=emailcontroller.text.toString();
                                String name=namecontroller.text.toString();
                                String password=passwordcontroller.text.toString();
                  
                                if(email!=null && name!=null && password!=null){
                                  if(selectedValue!='Select college' && captchacontroller.text.toString()==Captcha().getx().toString()){
                                    auth.createUserWithEmailAndPassword(email: email, password: password).then((value) =>
                                    {
                                      firestore.doc(auth.currentUser?.uid.toString()).set({
                                        'id':auth.currentUser?.uid.toString(),
                                        'name':name,
                                        'college':selectedValue
                                      }).then((value) => {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_screen()))
                                      })
                                    }).onError((error, stackTrace) => {
                  
                                    });
                                  }
                  
                                }
                              },
                  
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Already have Account ?',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Captcha().setx();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (Context) => LoginUi()));
                                  },
                                  child: const Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.purpleAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
