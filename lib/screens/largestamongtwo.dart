import 'package:flutter/material.dart';
class CheckApp extends StatefulWidget {
  @override
  _CheckAppState createState() => _CheckAppState();
}

class _CheckAppState extends State<CheckApp> {

  TextEditingController getfirst=TextEditingController();
  TextEditingController getsecond=TextEditingController();
  String result="";
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20.0,right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            TextField(
              controller: getfirst,
              decoration: InputDecoration(
                  hintText: "Enter the first number",
                  border: OutlineInputBorder()
              ),

            ),
            SizedBox(height: 10.0,),
            TextField(
              controller: getsecond,
              decoration: InputDecoration(
                  hintText: "Enter the second number",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10.0,),
            RaisedButton(
              color: Colors.green,
              onPressed: (){
                double num1=double.parse(getfirst.text);
                double num2=double.parse(getsecond.text);
                setState(() {
                  if(num1>num2){

                    result="First number is the greatest";
                  }
                  else{

                    result="Second number is the greatest";
                  }
                });


              },
              child: Text("Check"),
            ),
            Text(result),

          ],
        )
    );
  }
}
