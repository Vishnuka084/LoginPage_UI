import 'package:flutter/material.dart';
import 'package:login_page/Animation/FadeAnimation.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              const Color.fromARGB(255, 221, 60, 11),
              Color.fromARGB(255, 238, 116, 16),
              Color.fromARGB(255, 241, 164, 20)
            ]
          ) 
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                FadeAnimation(1, Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),),) ,
                SizedBox(height: 10,),
                FadeAnimation(1.3 , Text("    Welcome Back", style: TextStyle(color: Colors.white, fontSize: 18),),) ,
              ],
            ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60))
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 50,),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [BoxShadow(
                            color: Color.fromARGB(223, 238, 146, 92),
                            blurRadius: 20,
                            offset: Offset(0, 10)
                          )]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Color.fromARGB(226, 223, 205, 205)))
                              ),
                              child: TextField(decoration: InputDecoration(hintText: "Email or Phone number",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none                    
                                  ),
                              ),
                            ),
                             Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Color.fromARGB(226, 223, 205, 205)))
                              ),
                              child: TextField(decoration: InputDecoration(hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none                    
                                  ),
                              ),
                            ),
                         ]
                        ),
                      ),
                      SizedBox(height: 40,),
                      Text("Forgot Password ?", style: TextStyle(color:Colors.grey),),
                      SizedBox(height: 40,),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.orange[900]  
                        ),
                        child: Center(
                          child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text("Continue with social media ", style: TextStyle(color:Colors.grey),),
                      SizedBox(height: 10,),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue 
                              ),
                              child: Center(
                                  child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              ),
                            ),
                          ),
                          SizedBox(width: 40,),
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black 
                              ),
                              child: Center(
                                  child: Text("GitHub", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ), 
            )  
          ]
        ),
      ),
    );
  }
}