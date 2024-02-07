import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'Constants.dart';

class Moralsupport extends StatefulWidget {
  const Moralsupport({super.key});

  @override
  State<Moralsupport> createState() => _MoralsupportState();
}

class _MoralsupportState extends State<Moralsupport> {
  String? videoId = YoutubePlayer.convertUrlToId(
      "https://www.youtube.com/watch?v=BBAyRBTfsOU");
  // BBAyRBTfsOU
  YoutubePlayerController ytController = YoutubePlayerController(
      initialVideoId: ytid, flags: YoutubePlayerFlags(autoPlay: true));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Moral Support'),
          backgroundColor: Colors.purple.shade800,
        ),
        body: Container(
          padding: EdgeInsets.all(5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: gradiant1,begin: Alignment.topCenter),borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.all(10),
                    child: YoutubePlayer(controller: ytController)),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(
                          top: 10, bottom: 10, left: 5, right: 5),
                      width: double.infinity,
                      height: 80,
                      child: Center(
                          child: TextButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: Text(
                          'Video 1',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      )),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.purple.shade900,
                            Colors.purple.shade700,
                            Colors.purple.shade600,
                          ]),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(
                          top: 10, bottom: 10, left: 5, right: 5),
                      width: double.infinity,
                      height: 80,
                      child: Center(
                          child: TextButton(
                        onPressed: () {
                          ytid = 'Q5dkpQFWDdY';
                          setState(() {});
                        },
                        child: Text(
                          'Video 2',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      )),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.purple.shade900,
                            Colors.purple.shade700,
                            Colors.purple.shade600,
                          ]),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(
                          top: 10, bottom: 10, left: 5, right: 5),
                      width: double.infinity,
                      height: 80,
                      child: Center(
                          child: TextButton(
                        onPressed: () {
                          setState(() {
                            ytController = YoutubePlayerController(
                                initialVideoId: 'Q5dkpQFWDdY');
                          });
                        },
                        child: Text(
                          'Video 3',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      )),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.purple.shade900,
                            Colors.purple.shade700,
                            Colors.purple.shade600,
                          ]),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(
                          top: 10, bottom: 10, left: 5, right: 5),
                      width: double.infinity,
                      height: 80,
                      child: Center(
                          child: TextButton(
                        onPressed: () {
                          setState(() {
                            ytController = YoutubePlayerController(
                                initialVideoId: 'tibOZdfR_fI');
                          });
                        },
                        child: Text(
                          'Video 4',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      )),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.purple.shade900,
                            Colors.purple.shade700,
                            Colors.purple.shade600,
                          ]),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(
                          top: 10, bottom: 10, left: 5, right: 5),
                      width: double.infinity,
                      height: 80,
                      child: Center(
                          child: TextButton(
                        onPressed: () {
                          setState(() {
                            ytController = YoutubePlayerController(
                                initialVideoId: 'tibOZdfR_fI');
                          });
                        },
                        child: Text(
                          'Video 5',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      )),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.purple.shade900,
                            Colors.purple.shade700,
                            Colors.purple.shade600,
                          ]),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(
                          top: 10, bottom: 10, left: 5, right: 5),
                      width: double.infinity,
                      height: 80,
                      child: Center(
                          child: TextButton(
                        onPressed: () {
                          setState(() {
                            ytController = YoutubePlayerController(
                                initialVideoId: 'tibOZdfR_fI');
                          });
                        },
                        child: Text(
                          'Video 6',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      )),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.purple.shade900,
                            Colors.purple.shade700,
                            Colors.purple.shade600,
                          ]),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(
                          top: 10, bottom: 10, left: 5, right: 5),
                      width: double.infinity,
                      height: 80,
                      child: Center(
                          child: TextButton(
                        onPressed: () {
                          setState(() {
                            ytController = YoutubePlayerController(
                                initialVideoId: 'tibOZdfR_fI');
                          });
                        },
                        child: Text(
                          'Video 7',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      )),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.purple.shade900,
                            Colors.purple.shade700,
                            Colors.purple.shade600,
                          ]),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
