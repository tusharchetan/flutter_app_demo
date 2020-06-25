import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      backgroundColor: Colors.redAccent,
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Text(count.toString(),style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,

              ),),
            ),
            RaisedButton(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.print),
                  Text("Print")
                ],
              ),
              onPressed: (){
                  count++;
                  setState(() {

                  });
              },
            )
          ],
        ),
      ),
    );
  }
}
