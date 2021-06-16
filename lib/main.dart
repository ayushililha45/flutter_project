import 'package:flutter/material.dart';
import 'package:signup/detail.dart';

void main() {
  runApp(signup());
}

class signup extends StatefulWidget {
  // This widget is the root of your application.
  @override
  signupState createState() => signupState();
}

class signupState extends State<signup> {
  bool registerbutton = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // body: Center(
        //   child: Image.asset('assets/logo.jpg'),
        // ),
        
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(child: Image.asset('assets/logo.png'),),
                    Text(
                      'Register',
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      //style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                height: 350,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.5, 0.7, 0.9],
                    colors: [
                      Colors.orange[800],
                      Colors.orange[700],
                      Colors.orange[400],
                      Colors.orange[300],
                    ],
                  ),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(30)),
                ),
              ),
              details(lable: 'Fullname', iconData: Icons.person),
              details(lable: 'Email', iconData: Icons.mail),
              details(lable: 'Phone Number', iconData: Icons.phone),
              details(
                lable: 'Password',
                iconData: Icons.lock,
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 9,
                    primary: registerbutton
                        ? Colors.orange[800]
                        : Colors.red[400], // background
                    onPrimary: Colors.white, // foreground
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {
                    setState(() {
                      registerbutton = !registerbutton;
                    });
                  },
                  child: Text('REGISTER')),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              title: new Text('Already a member? Login'),
              icon: Icon(Icons.lock_open),
            ),
            BottomNavigationBarItem(
              title: new Text('Already a member? Login'),
              icon: Icon(Icons.lock_open),
            ),
          ],
        ),
      ),
    );
  }
}
