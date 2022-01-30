import 'package:flutter/material.dart';

void main()=> runApp(const MaterialApp(
home: firstapp(),

));
class firstapp extends StatefulWidget {
  const firstapp({Key? key}) : super(key: key);

  @override
  State<firstapp> createState() => _firstappState();
}

class _firstappState extends State<firstapp> {
  int x=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Helloooo'),
        centerTitle: true,
        backgroundColor: Colors.black12,

      ),
      floatingActionButton: FloatingActionButton(onPressed: (){

        setState(() {
          x+=1;

        });
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
              'Name :',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
            ),
            ),
            SizedBox(height: 12),
            Text(
              'Mohamed Aziz Ben Tkhayat',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Liked Song:',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10),

            CircleAvatar(
              backgroundImage: AssetImage('assets/pic1.jpg'),
              radius: 50,
            ),

            Text(
                'Save Your Tears',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Age :',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 12),
            Text(
              '$x',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


