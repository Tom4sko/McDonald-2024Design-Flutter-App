import 'package:flutter/material.dart';

class SaleWidget extends StatelessWidget {
  const SaleWidget({super.key, required this.title, required this.products, required this.picture});

  final String title;
  final String products;
  final String picture;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.yellow[600],
          elevation: 0,
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
              height: 200,
              color: Colors.yellow[600],
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
                      height: 100,
                      width: 110,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("-28%", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0,),),
                            Text("Týždeň", style: TextStyle(fontSize: 14.0,),),
                            Text("Kávy", style: TextStyle(fontSize: 14.0,),),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), bottomLeft: Radius.circular(20.0),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 21.3,), 
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),),
            ),
            SizedBox(height: 20.0,),  
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text("Uži si tento týždeň našu najvyššiu zľavu na kávu! Pokiaľ ti zachutí až veľmi, nezúfaj - môžeš ju lahľko získať späť len tým, že svoj bežný kupón na kávu budeš pravidelne využívať."),
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