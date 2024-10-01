import 'package:flutter/material.dart';
import 'package:mcdonaldclone/components/tile_news.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  "assets/images/cups.png",
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(300.0, 50.0),
                  topRight: Radius.elliptical(300.0, 50.0),
                ),
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50), // Space before the text
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: Text(
                          "Týždeň ešte",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "výhodnejšej kávy!",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                width: 30,
                                height: 30,
                                color: const Color.fromARGB(255, 197, 197, 197),
                                child: Icon(Icons.arrow_forward),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Divider(height: 2.0),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            TileNews(title: "Ronald McDonald House Charitie", description: "Zistite viac o tom, ako pomáhame chorým deťom.", banner: "assets/images/banner_kids.jpg",),
                            SizedBox(height: 20.0),
                            TileNews(title: "Poďte s nami pracovať", description: "Získajte s nami #SkillsForLife.", banner: "assets/images/banner_hiring.jpg",),
                            SizedBox(height: 20.0),
                            TileNews(title: "Bolo všetko podľa vašich predstáv?", description: "Povedzte nám, čo môžme urobiť lepšie.", banner: "assets/images/banner_everything.jpg",),
                            SizedBox(height: 20.0),
                            TileNews(title: "Pošlite kupóny ďalej", description: "Zdielajte aplikáciu so svojimi priateľmi", banner: "assets/images/banner_send.jpg",),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
