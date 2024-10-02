import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.title, required this.picture, required this.price});

  final String title;
  final String picture;
  final String price;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 120.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(picture),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 40,
                    right: 0,
                    child: Container(
                      height: 50,
                      width: 110,
                      child: Center(child: Text(price, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0,),),),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), bottomLeft: Radius.circular(20.0),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0,), 
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),),
            ),
            SizedBox(height: 20.0,),  
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text("Ponuka platí od 10:30."),
            ),
            SizedBox(height: 50.0,),            
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text("Podmienky", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0,),),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                height: 40,
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.alarm,
                    ),
                    Text("10:30 - 5:00"),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey,),),
                ),
              ),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                height: 40,
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.autorenew,
                    ),
                    Text("Opakujúca sa ponuka"),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey,),),
                ),
              ),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                height: 40,
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.person_2_outlined,
                    ),
                    Text("Prihlásenie/registrácia"),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey,),),
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text("Podmienky použitia", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.question_mark_rounded,
                    ),
                    Text("Ako to funguje", style: TextStyle(fontSize: 18.0),),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                ),
              ),
            ),
            SizedBox(height: 40.0,),
            Container(
              width: double.infinity,
              height: 70,
              child: Center(
                child: Text("Uplatniť", style: TextStyle(fontSize: 18.0),),
              ),
              decoration: BoxDecoration(
                color: Colors.yellow[600],
                border: Border.all(color: Colors.grey, width: 1.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}