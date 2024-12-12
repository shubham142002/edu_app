import 'package:edu_app/screens/course_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(home_screen());
}

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {

  List catNames =[
    "category",
    "Classes",
    "Free Course",
    "BookStore",
    "Live Course",
    "LeaderBoard",
  ];

  List<Color> catcolors =[
    Color(0xFFffff31),
    Color(0xFF66cd00),
    Color(0xFF00cdcd),
    Color(0xFFff8c00),
    Color(0xFFf56fa1),
    Color(0xFF03c03c),
  ];

  List<Icon> catIcon =[
    Icon(Icons.category, color: Colors.white, size: 30,),
    Icon(Icons.video_library, color: Colors.white, size: 30,),
    Icon(Icons.assignment, color: Colors.white, size: 30,),
    Icon(Icons.store, color: Colors.white, size: 30,),
    Icon(Icons.play_circle_fill, color: Colors.white, size: 30,),
    Icon(Icons.emoji_events, color: Colors.white, size: 30,),
  ];

  List imglist =[
    "Flutter",
    "React Native",
    "Python",
    "C#",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15,right: 15,bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xFF0048ba),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                    padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    "Hi, Programmer",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here....",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15,right: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: catcolors[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: catIcon[index],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          catNames[index],
                          style: TextStyle(
                              fontSize: 16,
                                  fontWeight : FontWeight.w500,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        )
                      ],
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Courses",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => course_screen(imglist.toString(),
                    ),));
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                         Container(
                           padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: Color(0xFFF5F3FF),
                           ),
                           child: Column(
                             children: [
                               Image.asset('images/C#.png',height: 150,width: 160,),
                               SizedBox(height: 10,),
                               Text(
                                   'c#',
                                   style: TextStyle(
                                     fontSize: 22,
                                     fontWeight: FontWeight.w600,
                                     color: Colors.black.withOpacity(0.6),
                                   )
                               ),
                             ],
                           ),
                         ),
                         Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFF5F3FF),
                            ),
                            child: Column(
                              children: [
                                Image.asset('images/Flutter.png',height: 150,width: 160,),
                                SizedBox(height: 10,),
                                Text(
                                    'Flutter',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black.withOpacity(0.6),
                                    )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),

                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFF5F3FF),
                            ),
                            child: Column(
                              children: [
                                Image.asset('images/Python.png',height: 150,width: 160,),
                                SizedBox(height: 10,),
                                Text(
                                    'Python',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black.withOpacity(0.6),
                                    )
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFF5F3FF),
                            ),
                            child: Column(
                              children: [
                                Image.asset('images/React Native.png',height: 150,width: 160,),
                                SizedBox(height: 10,),
                                Text(
                                    'React Native',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black.withOpacity(0.6),
                                    )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              /*  GridView.builder(
                  itemCount: imglist.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25)/(4*240),
                    mainAxisExtent: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index){
                    return InkWell(
                     *//* onTap: () {
                       Navigator.push(context, MaterialPageRoute(
                         builder: (context) => course_screen(imglist[index]),
                       ),);
                      },*//*
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF5F3FF),
                        ),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.all(10),
                            child: Image.asset(
                              "images/books.png",
                              //width: 200,
                              //height: 200,
                            ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              imglist[index],
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text("55 Videos",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.5),
                            ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),*/
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 32,
          selectedItemColor: Colors.blueAccent,
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment),label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),
        ],
      ),
    );
  }
}
