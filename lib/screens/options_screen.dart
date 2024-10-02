import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text("Viac", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0),),
                  Spacer(),
                  Image.asset("assets/images/menu_screen.png"),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey,),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10.0,),
                    child: Icon(
                      Icons.food_bank_outlined,
                    ),
                  ),
                  Text("Produkty", style: TextStyle(fontSize: 17.0,),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.arrow_forward_ios
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey,),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10.0,),
                    child: Icon(
                      Icons.person_2_outlined,
                    ),
                  ),
                  Text("Môj účet", style: TextStyle(fontSize: 17.0,),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.arrow_forward_ios
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey,),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10.0,),
                    child: Icon(
                      Icons.info_outline,
                    ),
                  ),
                  Text("O nás", style: TextStyle(fontSize: 17.0,),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.arrow_forward_ios
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey,),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10.0,),
                    child: Icon(
                      Icons.lock_outline,
                    ),
                  ),
                  Text("Zásady ochrannz osobných údajov", style: TextStyle(fontSize: 17.0,),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.arrow_forward_ios
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey,),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10.0,),
                    child: Icon(
                      Icons.lock_open_outlined,
                    ),
                  ),
                  Text("Podmienky používania MyOrder", style: TextStyle(fontSize: 17.0,),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.arrow_forward_ios
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey,),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10.0,),
                    child: Icon(
                      Icons.mail_outline_outlined,
                    ),
                  ),
                  Text("Napíš nám", style: TextStyle(fontSize: 17.0,),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.arrow_forward_ios
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey,),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10.0,),
                    child: Icon(
                      Icons.question_mark_outlined
                    ),
                  ),
                  Text("Pomoc a podpora", style: TextStyle(fontSize: 17.0,),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.arrow_forward_ios
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey,),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10.0,),
                    child: Icon(
                      Icons.g_translate_outlined,
                    ),
                  ),
                  Text("Krajina & Jazyk", style: TextStyle(fontSize: 17.0,),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.arrow_forward_ios
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}