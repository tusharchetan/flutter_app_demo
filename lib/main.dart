
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappdemo/HomePage.dart';

void main()
{
  runApp(MaterialApp(
   home: LoginPage(),
  ));
}

//Widget
//1. Stateless
// Stateful


class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold
    return Scaffold(
      backgroundColor: Colors.green,
appBar: AppBar(
  title: Icon(Icons.person,
  color: Colors.blue,),
  backgroundColor: Colors.red,
),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.person,size: 100,),
                Icon(Icons.person,size: 100,),
                Icon(Icons.person,size: 100,),
              ],
            ),

            Icon(Icons.person,size: 100,),
            Icon(Icons.person,size: 100,)
          ],
        ),
      ),
    );
  }
}



class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Icon(Icons.person),
            Text("Hello World")
          ],
        ),
      ),
      body: Container(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network("https://api.sololearn.com/Uploads/Avatars/828594.jpg",

                ),
                Card(
                  elevation: 10,
                  child: Center(
                    child: Icon(Icons.person,size: 200,),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.numberWithOptions(
                    signed: false
                  ),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mobile_screen_share),
                      prefix: Text("+91-"),
                      hintText: "Enter your Mobile Number"
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Enter your Password"
                  ),
                ),
                RaisedButton(
                  child: Text("Login"),
                  onPressed: (){

                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context)=>HomePage()
                            )
                          );
                  },
                )
              ],
            ),
          )
      ),
    );
  }
}
