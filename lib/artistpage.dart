import 'package:flutter/material.dart';
import 'userprofile.dart';
import 'allpage.dart';
import 'homepage.dart';
import 'musicpage.dart';

void main() => runApp(ArtistPage());

class ArtistPage extends StatefulWidget {
  @override
  _ArtistPageState createState() => _ArtistPageState();
}

class _ArtistPageState extends State<ArtistPage> {
  int _selectedIndex = 2; 
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; 
    });


    if (index == 0) {
      
    } else if (index == 1) {
    
    } else if (index == 2) {
    
    } else if (index == 3) {
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArtistScreen(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

class ArtistScreen extends StatelessWidget {
  final List<Map<String, String>> artists = [
    {"name": "Diljit Dosanjh", "image": "assets/image3.jpg"},
    {"name": "Jassie Gill", "image": "assets/image1.jpg"},
    {"name": "Hardy Sandhu", "image": "assets/image2.jpg"},
    {"name": "Guru Randhawa", "image": "assets/image3.jpg"},
    {"name": "Arjit Singh", "image": "assets/image4.jpg"},
  ];

  final int selectedIndex;
  final Function(int) onItemTapped;

  
  ArtistScreen({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Navigate to MusicPage when the menu button is pressed
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => MusicPage()),
            // );
          },
        ),
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Icon(Icons.search, color: Colors.white),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Search album, song, artist...',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Icon(Icons.mic, color: Colors.white),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: artists.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(artists[index]["image"]!), 
                  radius: 40, 
                ),
                SizedBox(width: 20), 
                Expanded(
                  child: Text(
                    artists[index]["name"]!,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: selectedIndex == 0 ? Colors.purple[400] : Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.library_books, color: selectedIndex == 1 ? Colors.purple[400] : Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllPage()), 
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.people, color: selectedIndex == 2 ? Colors.purple[400] : Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArtistPage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle, color: selectedIndex == 3 ? Colors.purple[400] : Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserProfile()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
