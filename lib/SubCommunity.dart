import 'package:flutter/material.dart';
import 'package:uu_loginui/Home_Screen.dart';

void main() {
  runApp(const SubCommunity());
}

class SubCommunity extends StatelessWidget {
  const SubCommunity({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home_screen()));
              },
              icon: Icon(Icons.arrow_back_outlined)),
          // automaticallyImplyLeading: true,
          backgroundColor: Colors.purple.shade900,
          title: Padding(
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Community',
              style: TextStyle(fontSize: 25),
            ),
          ),
          bottom: const TabBar(
            labelPadding: EdgeInsets.only(left: 10, right: 10),
            indicatorPadding: EdgeInsets.only(left: 5, right: 5),
            isScrollable: true,
            padding: EdgeInsets.only(left: 10, right: 10),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text('Sports',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              Tab(
                child: Text('Coding',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              Tab(
                child: Text('Journalism',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              Tab(
                child: Text('Management',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              Tab(
                child: Text('Medical',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ],
            labelColor: Colors.white,
          ),
        ),

        // ! THE DESIGNED BODY
        body: TabBarView(
          children: [
            CommunityList(),
            CommunityList(),
            CommunityList(),
            CommunityList(),
            CommunityList(),
          ],
        ),
      ),
    );
  }
}

class CommunityList extends StatelessWidget {
  const CommunityList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                  height: 100,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade50,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    border: Border.all(color: Colors.purple.shade900),
                    gradient: LinearGradient(begin: Alignment.topLeft, colors: [
                      Colors.blue.shade300,
                      Colors.blue.shade100,
                      Colors.blue.shade300
                    ]),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(5),
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://media.licdn.com/dms/image/D5603AQF_DfqMNKxPow/profile-displayphoto-shrink_800_800/0/1697396607338?e=2147483647&v=beta&t=yx-h-nZ3Uvv7U1ELYwugJ648_xxugAAKdkzn3-Kg1Sg'),
                    ),
                    title: Text('Mohd Zaid'),
                    subtitle: Text('Computer Science Student'),
                    trailing: Text('Rank 1'),
                  ));
            }));
  }
}
