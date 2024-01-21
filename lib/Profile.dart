import 'package:flutter/material.dart';
import 'package:uu_loginui/SignupUi.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.only(bottom: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50)),
                gradient: LinearGradient(begin: Alignment.center, colors: [
                  Colors.purple.shade900,
                  Colors.purple.shade800,
                  // Colors.purple.shade900,
                ]),
              ),
              alignment: Alignment.bottomCenter,
              child:  CircleAvatar(
                backgroundColor: Colors.purple.shade800,
                backgroundImage: NetworkImage(
                  'https://media.licdn.com/dms/image/D5603AQF_DfqMNKxPow/profile-displayphoto-shrink_800_800/0/1697396607338?e=2147483647&v=beta&t=yx-h-nZ3Uvv7U1ELYwugJ648_xxugAAKdkzn3-Kg1Sg',
                ),radius: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                enabled: false,
                style: TextStyle(color: Colors.purple.shade900),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.purpleAccent),
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Colors.purple.shade50,
                  label: const Text('Mohd Zaid '),
                  labelStyle:
                  const TextStyle(color: Colors.purple),
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: Colors.purple.shade900,
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                enabled: false,
                style: TextStyle(color: Colors.purple.shade900),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.purpleAccent),
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Colors.purple.shade50,
                  label: const Text('Zaidemail@gmail.com'),
                  labelStyle:
                  const TextStyle(color: Colors.purple),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.purple.shade900,
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                enabled: false,
                style: TextStyle(color: Colors.purple.shade900),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.purpleAccent),
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Colors.purple.shade50,
                  label: const Text('United University'),
                  labelStyle:
                  const TextStyle(color: Colors.purple),
                  prefixIcon: Icon(
                    Icons.school,
                    color: Colors.purple.shade900,
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                enabled: false,
                style: TextStyle(color: Colors.purple.shade900),
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.purpleAccent),
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Colors.purple.shade50,
                  label: const Text('Computer Science'),
                  labelStyle:
                  const TextStyle(color: Colors.purple),
                  prefixIcon: Icon(
                    Icons.apartment,
                    color: Colors.purple.shade900,
                  ),

                ),
              ),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupUi()));
                    },
                    child: const Text(
                      'Log Out',
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
            TextButton(
              onPressed: () {

              },
              child: const Text(
                'Help & Feedback',
                style: TextStyle(
                    color: Colors.purpleAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,decoration: TextDecoration.underline,),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
