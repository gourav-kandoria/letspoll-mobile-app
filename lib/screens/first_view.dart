import 'package:flutter/material.dart';

class first_view extends StatelessWidget {
  
 Widget build(BuildContext context) {
  final size =MediaQuery.of(context).size;
  var height =size.height;
  height = ((0.35)*height)/2;
  
  return Scaffold (
    body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Expanded(flex: 15,
          child: Text(""),
          ),
          Expanded( flex: 35,
               child:  Container(
                    child: CircleAvatar(
                    backgroundImage: AssetImage("assets/hacker.png"),
                    backgroundColor: Colors.white,
                    radius: height, 
                    )
               )
          ),          
          Expanded(flex: 20, 
            child: Container(
              child: create_button("Create Poll", context, height*2,'p_c_f'),
              alignment: Alignment(0,0.6),
            )
          ),
          Expanded(flex: 30,
            child: Container(
              child: create_button("Join Poll", context, height*2,'firstview'), 
              alignment: Alignment(0,-0.8),
            ),
          )
 
        ]
      ),
      color: Colors.grey[100],
    )
    );

 }
}

Widget create_button(String str, BuildContext context, var minw, String nav) {
  return  ButtonTheme(
      minWidth: minw-10,
      child: OutlineButton(
      splashColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 40,
      borderSide: BorderSide(color: Colors.grey),
      child:         
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child:Text(str,style: TextStyle(fontSize: 18),),
        ),
      onPressed: () { Navigator.pushNamed(context, nav);},
    )
  );
}