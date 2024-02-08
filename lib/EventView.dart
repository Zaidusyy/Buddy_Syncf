import 'package:flutter/material.dart';
import 'package:uu_loginui/Constants.dart';

class EventView extends StatelessWidget {
  EventView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'GDSC Solution Challenge',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              UpcomingEventBanner(
                image:
                    'https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_1080,q_100,w_1080/v1/gcs/platform-data-dsc/events/SolutionChallenge_2024_BevyPlatformThumbnail.png',
                title: 'GDSC Solution Challenge 2024',
                subtitle: 'Google Developer Student Clubs Event at UIT',
                width: double.infinity,
              ),
              Text(
                  GDSCparagraph,style: TextStyle(fontSize: 18),),
            ],
          ),
        ),
      ),
    );
  }
}
