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
              child: create_button("Create Poll", context, height*2,'/a_l_p'),
              alignment: Alignment(0,0.5),
            )
          ),
          Expanded(flex: 30,
            child: Container(
              child: create_button("Join Poll", context, height*2,"/"), 
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
      splashColor: Colors.green,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.green),
      child:         
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              child:Text(str,style: TextStyle(fontSize: 18),),
        ),
      onPressed: () { Navigator.pushNamed(context, nav);},
    )
  );
}