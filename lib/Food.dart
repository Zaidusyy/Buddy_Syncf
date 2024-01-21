import 'package:flutter/material.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            backgroundColor: Colors.purple.shade900,
            title: Padding(
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Food',
                style: TextStyle(fontSize: 25),
              ),
            ),
            bottom: const TabBar(
              padding: EdgeInsets.only(left: 10, right: 10),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Text('Veg',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
                Tab(
                  child: Text('Non Veg',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ],
              labelColor: Colors.white,
            ),
          ),
          body: TabBarView(children: [Foodlist(), Foodlist()]),
        ));
  }
}

class Foodlist extends StatelessWidget {
  const Foodlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                  height: 100,
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
                  child: Center(
                    child: ListTile(
                        leading: Container(
                          width: 100,
                          height: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://www.ft.com/__origami/service/image/v2/images/raw/https%3A%2F%2Fwww.ft.com%2F__origami%2Fservice%2Fimage%2Fv2%2Fimages%2Fraw%2Fhttp%253A%252F%252Fcom.ft.imagepublish.upp-prod-eu.s3.amazonaws.com%252F2262e2e4-49a1-11ea-aee2-9ddbdc86190d%3Fsource%3Dnext-article%26fit%3Dscale-down%26quality%3Dhighest%26width%3D700%26dpr%3D1?source=next-opengraph&fit=scale-down&width=900'))),
                        ),
                        title: Text(
                          'Khana Khazana',
                          style: TextStyle(
                              color: Colors.purple.shade900,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        subtitle: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade800,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade800,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade800,
                              size: 20,
                            ),
                            Icon(
                              Icons.star_half_outlined,
                              color: Colors.yellow.shade700,
                              size: 20,
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.grey,
                              size: 20,
                            )
                          ],
                        ),
                        trailing: Icon(
                          Icons.qr_code_scanner_outlined,
                          color: Colors.purple.shade900,
                          size: 40,
                        )),
                  ));
            }));
  }
}
