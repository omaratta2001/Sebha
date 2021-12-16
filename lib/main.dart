import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'سبحة',
      //to clear badge for demo for debug
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int count=0;
  // make increase of number of tasbeh
  void increment ()
  {
    setState(() {
      count++;
    });
  }
  // make to number for tasbeh equal 0
  void clear()
  {
    setState(() {
      count=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () { },
        backgroundColor: Color(0xff292c6d),
        child: Icon(Icons.add,size: 25,),
      ),
      backgroundColor: Colors.white ,
      appBar:
      AppBar(
        title: Text("Sebha",style: TextStyle(fontSize: 30),),
      centerTitle: true,
      backgroundColor: Color(0xff161853),
        // arrow icon at left at app bar
        leading: Icon(Icons.arrow_back_ios , color: Colors.white,size: 30,),
        actions: [
          Padding(

            padding: const EdgeInsets.all(10.0),
            // search icon at right in app bar
            child: Icon(Icons.search , color: Colors.white,size: 30,),
          )
        ],
      ),
      // to make all things at center in body
      body: Center(
        child: Column(
          //to make at half of body
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hi I am body" ,style: TextStyle(fontSize: 35 ),),
            Text("$count", style: TextStyle(fontSize: 30),),

        Padding(
          padding: const EdgeInsets.all(20.0),
          //button to increase the counter
          child: ElevatedButton(

          onPressed: () {
            increment();
          },

          child: Text("sabah"),
            style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                //to make button bigger
                minimumSize: Size(100, 100),
                // make shape of button circle
                shape: CircleBorder(side: BorderSide.none),
            ),
          ),
        ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                clear();
              },
                child: Text("clear"),
                style: ElevatedButton.styleFrom(minimumSize: Size(70, 70),
                  primary: Colors.amber,
                  shape: CircleBorder(side: BorderSide.none)
                ),
                ),
            ),

          ],
        ),
      ),
    );
  }
}
