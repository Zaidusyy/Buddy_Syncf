import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uu_loginui/Constants.dart';
import 'package:uu_loginui/LoginUi.dart';
import 'package:uu_loginui/SignupUi.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  String username="",collegename="",email="";



  final auth=FirebaseAuth.instance;

  @override
  void initState() {

    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    String? userId = auth.currentUser?.uid.toString();

    try {
      final docSnapshot = await FirebaseFirestore.instance.collection('userInfo').doc(userId).get();
      if (docSnapshot.exists) {
        setState(() {
          email=auth.currentUser!.email.toString();
          username = docSnapshot.data()!['name'].toString();
          collegename=docSnapshot.data()!['college'].toString();
        });
      } else {
        print('Document does not exist');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }





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
                  label:  Text(username),
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
                  label:  Text(email),
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
                  label:  Text(collegename),
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
            Roundbutton(name: 'Logout', onTap: (){
              FirebaseAuth auth=FirebaseAuth.instance;
              auth.signOut().then((value) => {
                Navigator.push(context, MaterialPageRoute(builder:(context) => LoginUi() ))
              });
            }),
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
