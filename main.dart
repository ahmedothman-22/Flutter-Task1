// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/material.dart';
void main() =>runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return  MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    backgroundColor: Color.fromARGB(255, 168, 165, 165),
    appBar: AppBar(
      // brightness:Brightness.light,   مش شغالة 
      backgroundColor: Colors.blue,
      title: const Text("Task1",style: TextStyle(fontSize: 25,color: Colors.white)),
      ),
   //--------------------------------------------------------------------------------------//
  drawer: Drawer(
    child:Column(
      children: [
      UserAccountsDrawerHeader(
      currentAccountPicture: CircleAvatar(
      backgroundColor: Color.fromARGB(255, 120, 126, 211),
      child: Text("A",style: TextStyle(fontSize: 35,color: Color.fromARGB(255, 243, 247, 247)),),
      ),
      accountName: Text("Ahmed osman"),accountEmail: Text("ahmedosman112200@gmail"),
      ),
    
      ListTile(leading: Icon(Icons.home),title: Text("Home Page"),),
      ListTile(leading: Icon(Icons.help),title: Text("Help"),),
      ListTile(leading: Icon(Icons.help_center),title: Text("About"),)
    
    ],)),
   //--------------------------------------------------------------------------------------// 
  body:
  Padding(
       padding: EdgeInsets.all(8.0),
       child: 
       Column(
         children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
               children: [
          Container(width: 100,height: 100,
          decoration: BoxDecoration(
          color: Color.fromARGB(255, 69, 70, 71),
          border: Border.all(color: Color.fromARGB(255, 95, 0, 237),width: 4),
          borderRadius: BorderRadius.circular(50)
          ),
          ),
          
          SizedBox(width: 20,),
         
          CircleAvatar(
              radius: 55,backgroundImage: AssetImage('images/image-1.jpg'),
              ),
         
          SizedBox(width: 20,),
          
          Container( width: 100,height: 100,
          decoration: BoxDecoration(
          color: Color.fromARGB(255, 243, 14, 17),
          border: Border.all(color: Color.fromARGB(255, 70, 5, 247),width: 4),
          borderRadius: BorderRadius.circular(50)),
          ),
           
           ]),
        //========================
         Padding(
         padding: EdgeInsets.all(8.0),),
         Container( 
          decoration: BoxDecoration(
          color: const Color.fromARGB(255, 2, 39, 69),
          border: Border.all(color: Color.fromARGB(255, 245, 242, 242),width: 3),
          borderRadius: BorderRadius.circular(30)),
          width: double.infinity,
          child:Text("Post" ,textAlign: TextAlign.center,style:TextStyle(
            fontFamily: AutofillHints.middleName,fontSize: 40,color: Color.fromARGB(255, 239, 235, 235)))
           ),
          //============
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),color:Color.fromARGB(255, 57, 56, 53).withOpacity(0.5),
                width: 400,height: 100,
                padding: EdgeInsets.all(15),
                child: ListTile(
                  leading:CircleAvatar( radius: 30,backgroundColor: Colors.black),
                  title: Text("CAT"),subtitle:Text("it's Flutter task ..good luck.") ),
                ),

            Divider(height: 20,color: const Color.fromARGB(255, 81, 79, 74)),
          
          Container(decoration: BoxDecoration(color: Color.fromARGB(255, 242, 241, 237).withOpacity(0.5), ),
          width: 400,
          height: 60,
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5.5),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,children: 
           [
              Column(children: [Icon(Icons.thumb_up_off_alt),Text("like")],),
              Column(children: [Icon(Icons.comment),Text("Comment")],),
              Column(children: [Icon(Icons.share),Text("Share")],),
            ]),
          ),

        Divider(height: 20,color: const Color.fromARGB(255, 81, 79, 74)),

         Container( 
          decoration: BoxDecoration(
          color: const Color.fromARGB(255, 2, 39, 69),
          border: Border.all(color: Color.fromARGB(255, 27, 27, 27),width: 3),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),topRight: Radius.circular(30),bottomRight: Radius.circular(30),)
          ),
          width: double.infinity,
          child:ListTile(
            title: Text(
            "Hello CAT ^^" ,style:TextStyle(fontSize: 20,color: Color.fromARGB(255, 239, 235, 235))       
            ),
            subtitle:Text(
            "Flutter task is great :)" ,style:TextStyle(fontSize: 20,color: Color.fromARGB(255, 239, 235, 235))
            )
          )
          ),
           ],
          ),  
         ],
       ),
     ),
    ),  
    );
  }
}
