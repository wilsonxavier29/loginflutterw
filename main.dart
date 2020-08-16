import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);
class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
body: SingleChildScrollView(
     child: Container(
     child: Column(
       children: <Widget>[
      Container(
        height: 240,

        child: FlareActor(
          "assets/wilson.flr",
          animation: "Wave",
        ),
      ),

         Padding(
           padding: EdgeInsets.all(30.0),
           child: Column(
             children:  <Widget>[
               Container(
                 padding: EdgeInsets.all(5),
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(10),
                   boxShadow: [
                     BoxShadow(
                       color: Color.fromRGBO(219, 216, 67, .2),
                       blurRadius: 20.0,
                       offset: Offset(0, 10)

                 )
           ]

                 ),
                 child: Column(
                   children: <Widget>[
                     Container(
                       padding: EdgeInsets.all(8.0),
                       decoration: BoxDecoration(
                         border: Border(bottom: BorderSide(color: Colors.grey[400]))
                       ),
                       child: TextField(
                         decoration: InputDecoration(
                           border: InputBorder.none,
                           hintText: "Ingrese Usuario",
                           hintStyle: TextStyle(color: Colors.grey[600])
                         ),
                       ),
                     ),
                     Container(
                       padding: EdgeInsets.all(8.0),
                       decoration: BoxDecoration(
                           border: Border(bottom: BorderSide(color: Colors.grey[400]))
                       ),
                       child: TextField(
                         decoration: InputDecoration(
                             border: InputBorder.none,
                             hintText: "Contraseña",
                             hintStyle: TextStyle(color: Colors.grey[600])
                         ),
                       ),
                     )

                   ],
                 ),

               ),
               SizedBox (height: 30,),
               Container(
                 height: 50,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   gradient: LinearGradient(
                     colors: [
                       Color.fromRGBO(219, 216, 67, .7),
                       Color.fromRGBO(219, 216, 67, .9),
                     ]
                   )
                 ),
                 child: Center(
                   child: Text("Login",style: TextStyle(color: Colors.black
                   ,fontWeight: FontWeight.bold),),
                 ),
               ),
               SizedBox (height: 40,),
               Container(
                 width: 200,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     FloatingActionButton(
                       child: Icon(FontAwesomeIcons.google),
                       backgroundColor: Color(0XFFDB2212),
                     ),
                     FloatingActionButton(
                       child: Icon(FontAwesomeIcons.twitch),
                       backgroundColor: Color(0XFF2722DB),
                     ),
                     FloatingActionButton(
                       child: Icon(FontAwesomeIcons.facebook),
                       backgroundColor: Color(0XFF173EDB),
                     ),
                   ],
                 ),

               ),
               SizedBox (height: 30,),
               Text("Olvide la Contraseña",style:
                 TextStyle(color: Color.fromRGBO(0, 0, 0, .9)),)

             ],
           )



         )

       ],
     ),
  ),

),
    );
  }



}