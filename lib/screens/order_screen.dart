import 'package:flutter/material.dart';
import 'package:mcdonaldclone/screens/navigation.dart';
import 'package:mcdonaldclone/screens/restaurants_screen.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Restaurants(),),);
          },
          icon: Icon(
            Icons.arrow_back,
          )
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
         ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              SizedBox(height: 160.0,),
              Icon(
                Icons.location_pin, color: Colors.yellow[700], size: 160.0,
              ),
              SizedBox(height: 10.0,),
              Text("Povoľ svoju polohu", style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 5.0,),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0,),
                child: Text("Najskôr je nutné vybrať si miesto objednania. Prosím, zdieľaj s nami tvoju polohu.", textAlign: TextAlign.center),
              ),
            ],
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Navigation(),),);
            },
            child: Container(
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text("Pokračovať", style: TextStyle(fontSize: 15.0),),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[600],
                ),
              ),
          ),
        ],
      ),
    );
  }
}