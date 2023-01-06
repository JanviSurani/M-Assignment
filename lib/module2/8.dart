//  8. Write a program to show four images around Textview

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:d8(),
    );
  }
}
class d8 extends StatefulWidget {
  const d8({Key? key}) : super(key: key);

  @override
  State<d8> createState() => _d8State();
}

class _d8State extends State<d8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('D8'),
        ),
        body:Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Image.network(
                      width: 180,
                      height: 180,
                      "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ea8a51fd-2576-4d20-8bbe-6ce34ab9bc56/deyt0x6-c80e5118-8f69-4ed5-ab6c-1573355c4440.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2VhOGE1MWZkLTI1NzYtNGQyMC04YmJlLTZjZTM0YWI5YmM1NlwvZGV5dDB4Ni1jODBlNTExOC04ZjY5LTRlZDUtYWI2Yy0xNTczMzU1YzQ0NDAuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.KZJWO6IL78Ar92vhAcoid7Olf6luaKqFp3XlM6x5K4w"),
                  SizedBox(width: 30,),
                  Image.network( width: 180,
                      height: 180,"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ea8a51fd-2576-4d20-8bbe-6ce34ab9bc56/deyt0x6-c80e5118-8f69-4ed5-ab6c-1573355c4440.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2VhOGE1MWZkLTI1NzYtNGQyMC04YmJlLTZjZTM0YWI5YmM1NlwvZGV5dDB4Ni1jODBlNTExOC04ZjY5LTRlZDUtYWI2Yy0xNTczMzU1YzQ0NDAuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.KZJWO6IL78Ar92vhAcoid7Olf6luaKqFp3XlM6x5K4w"),
                ],
              ),
            ),
            Text('SMILE',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 130)),
            Expanded(
              child: Row(
                children: [
                  Image.network(
                      width: 180,
                      height: 180,
                      "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ea8a51fd-2576-4d20-8bbe-6ce34ab9bc56/deyt0x6-c80e5118-8f69-4ed5-ab6c-1573355c4440.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2VhOGE1MWZkLTI1NzYtNGQyMC04YmJlLTZjZTM0YWI5YmM1NlwvZGV5dDB4Ni1jODBlNTExOC04ZjY5LTRlZDUtYWI2Yy0xNTczMzU1YzQ0NDAuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.KZJWO6IL78Ar92vhAcoid7Olf6luaKqFp3XlM6x5K4w"),
                  SizedBox(width: 30,),
                  Image.network( width: 180,
                      height: 180,"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ea8a51fd-2576-4d20-8bbe-6ce34ab9bc56/deyt0x6-c80e5118-8f69-4ed5-ab6c-1573355c4440.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2VhOGE1MWZkLTI1NzYtNGQyMC04YmJlLTZjZTM0YWI5YmM1NlwvZGV5dDB4Ni1jODBlNTExOC04ZjY5LTRlZDUtYWI2Yy0xNTczMzU1YzQ0NDAuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.KZJWO6IL78Ar92vhAcoid7Olf6luaKqFp3XlM6x5K4w"),
                ],
              ),
            ),
          ],
        )
    );
  }
}
