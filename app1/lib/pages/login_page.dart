import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Colors.pink,
      child: Column(
        children: [
          Image.asset(
            "../assets/images/10.jpg",
            fit: BoxFit.fill,
          ),
          Text(
            'Welcome',
            style: TextStyle(
              fontSize: 40.0,
              // color: Colors.white,
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'xyz@gmail.com',
                    labelText: 'username',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: '12345',
                    labelText: 'password',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              print("i am leo");
            },
            child: Text("login"),
            //  style: ,
          ),
        ],
      ),
    );
  }
}
