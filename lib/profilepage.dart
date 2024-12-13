import 'package:flutter/material.dart';
import 'package:hustleapp/signinpage.dart';
import 'homepage.dart';


void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        appBar: null, 
        body: BackgroundImageForm(),
      ),
    );
  }
}

class BackgroundImageForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      height: double.infinity, 
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/sign.png'), 
          fit: BoxFit.cover, 
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Riffle',  
            style: TextStyle(
              fontSize: 50,                
              color: Colors.white,         
              fontWeight: FontWeight.bold, 
            ),
          ),
          SizedBox(height: 30), 
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.purple.withOpacity(0.7), 
              borderRadius: BorderRadius.circular(15), 
            ),
            width: 350, 
            height: 350, 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Login To Continue',  
                    style: TextStyle(
                      fontSize: 24,                
                      color: Colors.white,         
                      fontWeight: FontWeight.bold, 
                    ),
                  ),
                ),
                SizedBox(height: 15),  
                Text(
                  'Email',  
                  style: TextStyle(
                    fontSize: 16,                
                    color: Colors.white,         
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.white), 
                    border: OutlineInputBorder(),
                    labelText: 'Enter your email',  
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Password',  
                  style: TextStyle(
                    fontSize: 16,               
                    color: Colors.white,      
                  ),
                ),
      
                TextField(
                  obscureText: true, 
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.white), 
                    border: OutlineInputBorder(),
                    labelText: 'Enter your password',  
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                      
                    },
                    child: Text('Login'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30), 
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "Don't have an account? Sign Up here",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white, 
                    fontWeight: FontWeight.w500, 
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninPage()),
                    );
                  },
                  child: Text('signUp'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

