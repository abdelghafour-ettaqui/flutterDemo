

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  home: StudentCard(),
));



class StudentCard extends StatefulWidget {
  const StudentCard({Key? key}) : super(key: key);

  @override
  State<StudentCard> createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {

  int studentLevel =0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Student Id card') ,
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            studentLevel +=1;
          });
        },
        child: Icon(Icons.add ),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0,40.0, 30.0 ,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  <Widget> [
            const Center(
             child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.jpg'),
                radius:40.0,
              )
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'Name',
              style: TextStyle(
                color:Colors.grey[200],
                letterSpacing: 2.0
              )
            ),
            SizedBox(height: 10.0),
            Text(
                'lin-sen',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                  fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 30.0),
            Text(
                'Current student level',
                style: TextStyle(
                    color:Colors.grey[200],
                    letterSpacing: 2.0
                )
            ),
            SizedBox(height: 10.0),
            Text(
                '$studentLevel',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'lin-sen@gmail.com',
                  style:TextStyle(
                    color: Colors.grey[400],
                    fontSize: 10.0,
                    letterSpacing: 1.0,
                  ) ,
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
























// import 'package:flutter/material.dart';
//
// void main() => runApp(MaterialApp( home: Home(),));
//
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//     appBar: AppBar(
//     title: const Text('My frist app'),
//     centerTitle: true,
//     backgroundColor: Colors.yellow[300],
//     ),
//     body: const Center(
//     // child: Image(image: AssetImage('assets/education.png')) ,
//     child:Image(
//         image: NetworkImage('https://images.pexels.com/photos/15045098/pexels-photo-15045098.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
//     )
//     // child:Text('Hello YouCoders',
//     // style: TextStyle(
//     // fontSize: 20.0,
//     // fontWeight: FontWeight.bold,
//     // letterSpacing: 2.0,
//     // color: Colors.black,
//     // fontFamily: 'IndieFlower',
//     // ),
//     // ),
//     ),
//     floatingActionButton: (
//     FloatingActionButton(
//     onPressed: () {  },
// child: const Text('click me'),
// )
// ),
// );
// }
// }