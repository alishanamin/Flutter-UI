import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() =>
    runApp(
      MaterialApp(
        theme: ThemeData(brightness: Brightness.dark),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        //elevation: 0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.file_download), onPressed: () {}),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/www.png', height: 50, width: 190,),
            //Drawer(),
          ],
        ),
        //brightness: Brightness.light,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
          autofocus: true,
          hoverColor: Colors.amber,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  //gradient: LinearGradient(colors: [Colors.orangeAccent,Colors.red,Colors.black]),
                  color: Colors.black,
                  borderRadius: BorderRadius.vertical(
                    //top: Radius.circular(30),
                      bottom: Radius.circular(30)),
                ),
                padding: EdgeInsets.only(
                    left: 20.0, top: 10, bottom: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Find Your", style: TextStyle(color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text("Movie", style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                    ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: IconButton(
                            icon: Icon(Icons.search, color: Colors.black),
                            onPressed: () {},
                            tooltip: "Click",
                          ),
                          hintText: "Search by keyword....",
                          hintStyle: TextStyle(color: Colors.black),
                          fillColor: Colors.black87,

                        ),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Trending", style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          GestureDetector(
                            child: promoCode('assets/one.jpg'),
                            onTap: () {},),
                          promoCode('assets/eeone.jpg'),
                          //promoCode('assets/three.jpg'),
                          //promoCode('assets/four.jpeg'),
                          promoCode('assets/eef.jpg'),
                          //promoCode('assets/six.jpg'),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("English Movies", style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800
                    ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          promoCode('assets/eeone.jpg'),
                          promoCode('assets/eetwo.jpg'),
                          promoCode('assets/eet.jpg'),
                          promoCode('assets/eef.jpg'),
                          promoCode('assets/ee5.png'),
                          promoCode('assets/ee6.jpg'),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Hindi Movies", style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800
                    ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          promoCode('assets/one.jpg'),
                          promoCode('assets/two.jpg'),
                          promoCode('assets/three.jpg'),
                          promoCode('assets/four.jpeg'),
                          promoCode('assets/five.jpg'),
                          promoCode('assets/six.jpg'),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget promoCode(image) {
  return AspectRatio(
    aspectRatio: 2.4 / 3,
    child: Container(
      margin: EdgeInsets.only(right: 11),
      decoration: BoxDecoration(
        //color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}