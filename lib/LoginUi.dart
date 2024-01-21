import 'package:flutter/material.dart';
import 'package:uu_loginui/Captcha.dart';
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
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            const SizedBox(height: 50),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextFormField(
                                style: TextStyle(color: Colors.purple.shade900),
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.purple.shade50,
                                  label: const Text('Email'),
                                  labelStyle:
                                      const TextStyle(color: Colors.purple),
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: Colors.purple.shade900,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.purpleAccent),
                                      borderRadius: BorderRadius.circular(10)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.purple.shade900),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.purple.shade50,
                                border: Border.all(color: Colors.purple.shade900),
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
                                    'UU',
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
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              'data:image/jpeg;base64,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')),
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
                            Padding(
                              padding: const EdgeInsets.only(top: 30, bottom: 10),
                              child: Container(
                                height: 60,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.purple.shade900),
                                padding: const EdgeInsets.all(2),
                                child: Expanded(
                                  child: TextButton(
                                    style: ButtonStyle(
                                        overlayColor: MaterialStateProperty.all(
                                            Colors.deepPurple.shade900)),
                                    onPressed: () {
                                      //home page
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Home_screen()));
                                    },
                                    child: const Text(
                                      'Log in',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          fontFamily: 'rubikm'),
                                    ),
                                  ),
                                ),
                              ),
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupUi()));
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
