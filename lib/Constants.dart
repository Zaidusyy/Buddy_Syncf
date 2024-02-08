import 'package:flutter/material.dart';
import 'package:uu_loginui/EventView.dart';
import 'package:uu_loginui/SubCommunity.dart';
import 'package:uu_loginui/Utils/ToastMessage.dart';

final List<Color> gradiant1 = [
  Colors.purple.shade800,
  Colors.purple.shade600,
  Colors.purple.shade700
];
final List<Color> gradiant2 = [
  Colors.purple.shade700,
  Colors.purple.shade500,
  Colors.purple.shade600
];
final List<Color> gradiant3 = [
  Colors.purple.shade500,
  Colors.purple.shade300,
  Colors.purple.shade400
];

String ytid = 'tibOZdfR_fI';

class UpcomingEventBanner extends StatelessWidget {
  final String image, title, subtitle;
  var navigateTo;
  double height, width;

  UpcomingEventBanner(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      this.navigateTo,
      this.height = 220,
      this.width = 200});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (navigateTo != null) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => navigateTo));
        }
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: height,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover),
                  color: Colors.purple.shade700,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.purple.shade900, width: 2)),
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple.shade900),
              textAlign: TextAlign.start,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                subtitle,
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.purple.shade700, fontSize: 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String title;
  final icon;
  final gradiant;
  final nextRoute;

  CategoryButton(
      {super.key,
      required this.title,
      required this.icon,
      this.nextRoute,
      this.gradiant});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (nextRoute != null) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => nextRoute));
        }
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 180,
        width: 150,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: (gradiant != null) ? gradiant : gradiant1,
                begin: Alignment.topCenter),
//  color: Colors.purple.shade700,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.purple.shade900, width: 2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 80,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

class InputText extends StatelessWidget {
  String name;
  final prefixicon, keybordtype, sufixicon;
  var controller;
  InputText(
      {super.key,
      required this.name,
      this.sufixicon,
      required this.prefixicon,
      this.keybordtype,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        style: TextStyle(color: Colors.purple.shade900),
        keyboardType: keybordtype,
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.purple.shade50,
          label: Text('$name'),
          labelStyle: TextStyle(color: Colors.purple),
          prefixIcon: Icon(
            prefixicon,
            color: Colors.purple.shade900,
          ),
          suffixIcon: Icon(
            sufixicon,
            color: Colors.purple.shade900,
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.purpleAccent),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple.shade900),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}

class Roundbutton extends StatelessWidget {
  String name;
  final message;
  final VoidCallback onTap;

  Roundbutton(
      {super.key,
      required this.name,
      this.message = null,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.purple.shade900),
      padding: const EdgeInsets.all(2),
      child: TextButton(
        style: ButtonStyle(
            overlayColor:
                MaterialStateProperty.all(Colors.deepPurple.shade900)),
        onPressed:onTap,
        child: Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

final GDSCparagraph =
    """The GDSC (Google Developer Student Clubs) Solution Challenge is an exciting annual competition that empowers students worldwide to tackle real-world problems using Google's cutting-edge technology. \n
In the 2024 edition of the challenge, students are invited to form teams and develop innovative solutions leveraging a wide array of Google tools and platforms. \n
Participants have the opportunity to utilize Google Cloud services, Firebase, Google Maps Platform, and other powerful resources to address pressing issues in various domains such as healthcare, education, sustainability, and more. \n
By harnessing the latest technologies and their creativity, students can make a positive impact on their communities and beyond. \n
Throughout the Solution Challenge, teams collaborate, iterate, and refine their solutions, guided by mentors and supported by the vibrant GDSC community. \n
With access to workshops, resources, and expert guidance, participants gain valuable skills and experiences that extend beyond the competition. \n
Whether you're a seasoned developer or just starting your journey in technology, the GDSC Solution Challenge offers a platform to showcase your talents, solve real problems, and make a difference in the world. \n
Join us in this journey of innovation, collaboration, and impact! \n
To learn more about the GDSC Solution Challenge 2024 and how to participate, visit the official GDSC website or reach out to your local GDSC chapter. \n
Get ready to unleash your creativity, drive positive change, and shape the future with Google technology! """;
