import 'package:flutter/material.dart';
import 'package:uu_loginui/Food.dart';
import 'package:uu_loginui/MoralSupport.dart';
import 'package:uu_loginui/SubCommunity.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: Text("Hello"),),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
               padding: EdgeInsets.all(2),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(begin: Alignment.center, colors: [
                      Colors.purple.shade900,
                      Colors.purple.shade800,
                      // Colors.purple.shade900,
                    ]),
                  ),
                  child: Text(
                    'Even the greatest were beginners. Don’t be afraid to take that first step.',
                    style: TextStyle(color: Colors.white, fontSize: 32,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'Category',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade900,
                        fontSize: 20),
                    textAlign: TextAlign.start,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SubCommunity()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 180,
                          width: 150,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.purple.shade800,
                                Colors.purple.shade600,
                                Colors.purple.shade700
                              ], begin: Alignment.topCenter),
                              //  color: Colors.purple.shade700,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.purple.shade900, width: 2)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.group_add_outlined,
                                color: Colors.white,
                                size: 80,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Community',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Food()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 180,
                          width: 150,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.purple.shade700,
                                Colors.purple.shade500,
                                Colors.purple.shade600
                              ], begin: Alignment.topCenter),
                              // color: Colors.purple.shade600,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.purple.shade900, width: 2)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.food_bank_outlined,
                                color: Colors.white,
                                size: 80,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Food',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 180,
                        width: 150,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.purple.shade500,
                              Colors.purple.shade300,
                              Colors.purple.shade400
                            ], begin: Alignment.topCenter),
                            //color: Colors.purple.shade500,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.purple.shade900, width: 2)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.share_location_outlined,
                              color: Colors.white,
                              size: 80,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Locate',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Moralsupport()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 180,
                          width: 150,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.purple.shade800,
                                Colors.purple.shade600,
                                Colors.purple.shade700
                              ], begin: Alignment.topCenter),
                              //   color: Colors.purple.shade400,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.purple.shade900, width: 2)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.video_collection_outlined,
                                color: Colors.white,
                                size: 80,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Moral Support',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(10),
                        height: 180,
                        width: 150,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.purple.shade700,
                              Colors.purple.shade500,
                              Colors.purple.shade600
                            ], begin: Alignment.topCenter),
                            //  color: Colors.purple.shade600,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.purple.shade900, width: 2)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.route_outlined,
                              color: Colors.white,
                              size: 80,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Career Guidance',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'Upcoming Events',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade900,
                        fontSize: 20),
                    textAlign: TextAlign.start,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 220,
                        margin: const EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://i.pinimg.com/originals/95/e9/d8/95e9d8383e89e22f39f49efc9f217e70.jpg'),
                                      fit: BoxFit.cover),
                                  color: Colors.purple.shade700,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.purple.shade900, width: 2)),
                            ),
                            Text(
                              'CODE-A-THON',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple.shade900),
                              textAlign: TextAlign.start,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                'Coding Event in UCER',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.purple.shade700, fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 220,
                        margin: const EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_1080,q_100,w_1080/v1/gcs/platform-data-dsc/events/SolutionChallenge_2024_BevyPlatformThumbnail.png'),
                                      fit: BoxFit.cover),
                                  color: Colors.purple.shade700,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.purple.shade900, width: 2)),
                            ),
                            Text(
                              'GDSC Solution Challenge 2024',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple.shade900),
                              textAlign: TextAlign.start,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                'Google Developer Student Clubs Event at UIT',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.purple.shade700, fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 220,
                        margin: const EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://i.pinimg.com/originals/95/e9/d8/95e9d8383e89e22f39f49efc9f217e70.jpg'),
                                      fit: BoxFit.cover),
                                  color: Colors.purple.shade700,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.purple.shade900, width: 2)),
                            ),
                            Text(
                              'CODE-A-THON',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple.shade900),
                              textAlign: TextAlign.start,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                'Coding Event in UCER',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.purple.shade700, fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 220,
                        margin: const EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_1080,q_100,w_1080/v1/gcs/platform-data-dsc/events/SolutionChallenge_2024_BevyPlatformThumbnail.png'),
                                      fit: BoxFit.cover),
                                  color: Colors.purple.shade700,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.purple.shade900, width: 2)),
                            ),
                            Text(
                              'GDSC Solution Challenge 2024',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple.shade900),
                              textAlign: TextAlign.start,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                'Google Developer Student Clubs Event at UIT',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.purple.shade700, fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
          ),
        ),
            )),
      );
  }
}
