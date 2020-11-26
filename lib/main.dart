import 'package:flutter/material.dart';

import 'list.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.add_road),
                      Image.asset("img/hungama.png",height: 40,),
                      Image.asset("img/music.png",height: 30,)
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.my_library_books_outlined),
                          SizedBox(height: 5,),
                          Text("BooksMark",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w300),)
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.notifications_outlined),
                          SizedBox(height: 5,),
                          Text("Notifications",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w300),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.settings),
                          SizedBox(height: 5,),
                          Text("Settings",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w300),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.payment),
                          SizedBox(height: 5,),
                          Text("Payments",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w300),)
                        ],
                      )
                    ],
                  ),

                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text("Recently Played",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),)
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text("More >",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400),)
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  ThirdViewList(),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text("Weekly Charts",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),)
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text("More >",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400),)
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  FourthViewList(),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text("Winter Romance",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),)
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text("More >",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400),)
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  FifthViewList()

                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon:Icon(Icons.headset_mic_outlined),
                title: Text('My Music'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.music_note_sharp),
                title: Text('Online'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.motion_photos_pause),
                title: Text('Pause'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.search),
                title: Text('Search'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.favorite),
                title: Text('Favourite'),
                backgroundColor: Colors.black12
            ),
          ],
          onTap: (index){
            setState((){
              _currentIndex = index;
            }
            );
          },
        ),
      ),
    );
  }
}
class FifthViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount:recentCourses.length,
        itemBuilder: (context, index){
          return FifthViewCard(course: recentCourses[index]);
        },
      ),

    );
  }
}
class FifthViewCard extends StatelessWidget {
  FifthViewCard({@required this.course});
  final Course course;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: EdgeInsets.all(8),
        height: 150,
        width: 150,
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(course.illustration,fit: BoxFit.cover,height:100,)),
            Text(course.text)
          ],
        ),
      );
  }
}

class FourthViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount:recentCourses.length,
        itemBuilder: (context, index){
          return FourthViewCard(course: recentCourses[index]);
        },
      ),

    );
  }
}
class FourthViewCard extends StatelessWidget {
  FourthViewCard({@required this.course});
  final Course course;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: EdgeInsets.all(8),
        height: 200,
        width: 140,
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(course.illustration,fit: BoxFit.cover,height:120,)),
            Text(course.text)
          ],
        ),
      );
  }
}


class ThirdViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount:recentCourses.length,
        itemBuilder: (context, index){
          return ThirdViewCard(course: recentCourses[index]);
        },
      ),

    );
  }
}
class ThirdViewCard extends StatelessWidget {
  ThirdViewCard({@required this.course});
  final Course course;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 150,
        width: 120,
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(course.illustration,fit: BoxFit.cover,height:80,)),
            Text(course.text)
          ],
        ),
      );
  }
}


