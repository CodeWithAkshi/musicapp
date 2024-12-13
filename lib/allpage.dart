import 'package:flutter/material.dart';
import 'artistpage.dart';
import 'userprofile.dart';
import 'homepage.dart';

class AllPage extends StatefulWidget {
  @override
  _AllPageState createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  int _selectedIndex = 0; 

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
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body:SingleChildScrollView(child:
       Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recommendations',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),


            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/soni.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Soni Soni',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/ayainahi.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Aayi nai',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/shape.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Shape of you',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/khamoshiyan.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Khamoshiyan',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/gulabo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Gulabo',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                ],
              ),
            ),

            
            SizedBox(height: 20),

          
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recents',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),

            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/brunomars.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Bruno Mars',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/nadaanparinde.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Nadaan Parinde',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/gulabo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Gulabo',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/humnava.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Humnava Mere',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/brunomars.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Bruno Mars',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                ],
              ),
            ),

        
            SizedBox(height: 20),


              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You liked',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),

            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/shape.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Shape of You',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/ayainahi.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Aayi Nai',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/humnava.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),Text('Humnava Mere',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/millionare.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Millionaire',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/soni.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Soni Soni',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                ],
              ),
            ),

            
            SizedBox(height: 20),
           
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Downloads',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),


            
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/nadaanparinde.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Nadaan Parinde',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/ilahi.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Ilahi',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/khamoshiyan.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Khamoshiyan',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/ayainahi.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Aayi Nhi',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/shape.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Shape of You',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Artists',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),

            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/millionare.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Millionaire',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/ilahi.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Ilahi',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/gulabo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Gulabo',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/soni.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Soni Soni',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/nadaanparinde.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Nadaan Parinde',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

             
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Search History',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),

            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/shape.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Shape of You',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/gulabo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Gulabo',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/brunomars.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Bruno Mars',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/khamoshiyan.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Khamoshiyan',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Container(
                        height:130,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage('assets/soni.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Soni Soni',style:TextStyle(color:Colors.white,)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    bottomNavigationBar: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: _selectedIndex == 0 ? Colors.purple[400] : Colors.white),
              onPressed: () {
                               
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.library_books, color: _selectedIndex == 1 ? Colors.purple[400] : Colors.white),
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllPage()), 
                );

              },
            ),
            IconButton(
              icon: Icon(Icons.people, color: _selectedIndex == 2 ? Colors.purple[400] : Colors.white),
              onPressed: () {             
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArtistPage()), 
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle, color: _selectedIndex == 3 ? Colors.purple[400] : Colors.white),
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
