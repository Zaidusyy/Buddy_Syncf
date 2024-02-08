import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uu_loginui/Captcha.dart';
import 'package:uu_loginui/Constants.dart';
import 'package:uu_loginui/Home_Screen.dart';
import 'package:uu_loginui/SignupUi.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  String selectedValue = 'Select college';
  bool passState = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final captchaController= TextEditingController();


  FirebaseAuth auth=FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // resizeToAvoidBottomInset: false,
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
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        'Welcome Back',
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
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, left: 10, right: 10),
                        child: Column(
                          children: [
                            const SizedBox(height: 30),
                            InputText(
                              name: 'Email',
                              prefixicon: Icons.email_outlined,
                              controller: emailController,
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
                                controller: passwordController,
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
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'Forget Password ? ',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.black,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextFormField(
                                controller: captchaController,
                                style: TextStyle(color: Colors.purple.shade900),
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintText: 'Enter Captcha',
                                    fillColor: Colors.purple.shade50,
                                    filled: true,
                                    prefixIcon: Icon(
                                      Icons.password,
                                      color: Colors.purple.shade900,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Colors.purple.shade900)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.purpleAccent))),
                              ),
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
                              name: 'Login',
                              onTap: () {

                                if(emailController.text.toString()!=null && passwordController.text.toString()!=null){
                                  auth.signInWithEmailAndPassword(email: emailController.text.toString(), password: passwordController.text.toString()).then((value) =>
                                  {
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => Home_screen()))
                                  }).onError((error, stackTrace) => {

                                  });


                                }


                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Don\'t have Account ?',
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
                                            builder: (context) => SignupUi()));
                                  },
                                  child: const Text(
                                    'Sign Up',
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
