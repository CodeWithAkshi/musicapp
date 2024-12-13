import 'package:flutter/material.dart';
import 'package:hustleapp/userprofile.dart';

class EditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,  
      body: Padding(
        padding: const EdgeInsets.all(16.0),  
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,  
          crossAxisAlignment: CrossAxisAlignment.center,  
          children: <Widget>[
            SizedBox(height: 40), 
                
            Text(
              'Edit Profile',  
              style: TextStyle(
                fontSize: 30,                
                fontWeight: FontWeight.bold, 
                color: Colors.white,         
              ),
            ),

            SizedBox(height: 20),
            Center(  
              child: CircleAvatar(
                radius: 60,  
                backgroundImage: AssetImage('assets/image1.jpg'), 
              ),
            ),
            SizedBox(height: 20), 
            Align(
              alignment: Alignment.centerLeft,
            child:Text(
                  'Username',  
                  style: TextStyle(
                    fontSize: 16,            
                    color: Colors.white,        
                  ),
                ),
            ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.white), 
                    border: OutlineInputBorder(),
                    labelText: 'Enter username',  
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerLeft,
                            
                child:Text(
                  'Email',  
                  style: TextStyle(
                    fontSize: 16,                
                    color: Colors.white,        
                  ),
                ),
                ),                
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.white), 
                    border: OutlineInputBorder(),
                    labelText: 'Enter email',  
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 15),

              
                Align(
                  alignment: Alignment.centerLeft,
                child:Text(
                  'Password',  
                  style: TextStyle(
                    fontSize: 16,              
                    color: Colors.white,         
                  ),
                ),
                ),
                TextField(
                  obscureText: true, 
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.white),
                    border: OutlineInputBorder(),
                    labelText: 'Enter password',  
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserProfile()),
                    );
                    },
                    child: Text('Login'),
                  ),
                ), 
          ],
        ),
      ),
    );
  }
}
