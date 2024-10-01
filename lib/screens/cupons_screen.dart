import 'package:flutter/material.dart';
import 'package:mcdonaldclone/components/tile_cupons.dart';
import 'package:mcdonaldclone/components/tile_cupons_special.dart';

class Cupons extends StatelessWidget {
  const Cupons({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Ponuky", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, ),
                child: SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Center(child: Text("Celá ponuka")),
                      ),
                      SizedBox(width: 10.0,),
                      Container(
                        height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Center(child: Text("Denná ponuka")),
                      ),
                      SizedBox(width: 10.0,),
                      Container(
                        height: 50,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Center(child: Text("Raňajky")),
                      ),
                      SizedBox(width: 10.0,),
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Center(child: Text("Skupinova ponuka")),
                      ),
                      SizedBox(width: 10.0,),
                      Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Center(child: Text("Happy Meal")),
                      ),
                      SizedBox(width: 10.0,),
                      Container(
                        height: 50,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Center(child: Text("McCafé")),
                      ),
                    ], 
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      TileCuponsSpecial(title: "Zľava na kávu 28%", products: "Kávy", picture: "assets/images/mccafee.png"),
                      SizedBox(height: 20.0,),
                      TileCupons(title: "CheeseBurger + 6ks Chicken McNuggets", picture: "assets/images/normal.jpg", price: "5,90\$"),
                      SizedBox(height: 20.0,),
                      TileCupons(title: "French Fries + Coca Cola + Burger of your Choice", picture: "assets/images/menu.jpg", price: "4,30\$"),
                      SizedBox(height: 20.0,),
                      TileCupons(title: "DoubleBigTasty + Coca Cola", picture: "assets/images/doublebigtasty.jpg", price: "5,10\$"),
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