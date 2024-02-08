import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:uu_loginui/Constants.dart';
import 'package:uu_loginui/EventView.dart';
import 'package:uu_loginui/Food.dart';
import 'package:uu_loginui/MoralSupport.dart';
import 'package:uu_loginui/SubCommunity.dart';
import 'package:http/http.dart'as http;


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  String quots =
      "Embrace challenges, they mold strength. Setbacks are setups for comebacks.";
  String author = "Unknown";

  Future<String> getquotes() async {
    final response =
    await http.get(Uri.parse('https://api.quotable.io/random?minLength=50&maxLength=100'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      quots = data['content'];
      author = data['author'];
      return quots;
    }
    return quots;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Colors.purple.shade700,
// Colors.purple.shade900,
                  ]),
                ),
                child: FutureBuilder(future: getquotes(), builder: (context,Snapshot){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SelectableText(
                          '${quots}', textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.white, fontSize: 20,),maxLines: 4,
                        ),

                        Text(
                          '- ${author}', textAlign: TextAlign.end,
                          style: TextStyle(color: Colors.white, fontSize: 22,),
                        ),
                      ],
                    );
                  }
               // }
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
              CategoryButton(title: 'Community', icon: Icons.group_add_outlined,nextRoute: SubCommunity(),gradiant: gradiant1,),
              CategoryButton(title: 'Food', icon: Icons.food_bank_outlined,nextRoute: Food(),gradiant: gradiant2,),
              CategoryButton(title: 'Locate', icon: Icons.share_location_sharp,gradiant: gradiant3,),
              CategoryButton(title: 'Moral Support', icon: Icons.video_collection_outlined,nextRoute: Moralsupport(),gradiant: gradiant1,),
              CategoryButton(title: 'Career Guidance', icon: Icons.route_outlined,gradiant: gradiant2,)
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
      UpcomingEventBanner(image: 'https://i.pinimg.com/originals/95/e9/d8/95e9d8383e89e22f39f49efc9f217e70.jpg', title: 'CODE-A-THON', subtitle: 'Coding Event in UCER',navigateTo: EventView(),height: 150,),
      UpcomingEventBanner(image: 'https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_1080,q_100,w_1080/v1/gcs/platform-data-dsc/events/SolutionChallenge_2024_BevyPlatformThumbnail.png', title: 'GDSC Solution Challenge 2024', subtitle: 'Google Developer Student Clubs Event at UIT',height: 150,),
      UpcomingEventBanner(image: 'https://i.pinimg.com/originals/95/e9/d8/95e9d8383e89e22f39f49efc9f217e70.jpg', title: 'CODE-A-THON', subtitle: 'Coding Event in UCER',navigateTo: EventView(),height: 150,),
      UpcomingEventBanner(image: 'https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_1080,q_100,w_1080/v1/gcs/platform-data-dsc/events/SolutionChallenge_2024_BevyPlatformThumbnail.png', title: 'GDSC Solution Challenge 2024', subtitle: 'Google Developer Student Clubs Event at UIT',height: 150,),



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

