import 'package:flutter/material.dart';

void main(){
  runApp(Profilepage());
}

class Profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Profile Page",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('My App'),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Container(
              width: 300,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(
                  color: Colors.black,
                  blurRadius: 2,
                  spreadRadius: 5,
                  offset: Offset(2, 1)
                )],
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage('https://wallpapers.com/images/high/cool-profile-picture-minion-13pu7815v42uvrsg.webp'),
                    ),
                    Text('Name: Hamza', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color:Colors.brown),),
                    Text('maherhamza4616@gmail.com'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.map),
                        Text('Pattoki, Pakistan')
                      ],
                    ),
                    ElevatedButton(
                    onPressed: (){
                      print('Button is Pressed');
                    },
                        child: Text('Contact Me')
                    )


                  ],
                ),
            ),
          ),
        ),
      ),

    );
  }
}