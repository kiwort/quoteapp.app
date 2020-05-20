import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
 int _index = 0;
  List quotes = ["this is first quote we made it via a video tutorial which is given by paulo",
  "this is second quote,",
      "this is third quote",
  "tis is fourth quote",
  "this is fifth quote"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child:Center(
              child: Container(
                  
                  width:350,
                  height: 200,
                  margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(14.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(58.0),
                    child: Center(child: Text(quotes[_index % quotes.length],
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontStyle: FontStyle.italic,
                      fontSize: 16.5,
                    ),)),
                  ))),
            ),

            Divider(thickness: 2.3,),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: FlatButton.icon(
                color: Colors.amber.shade700,
                  onPressed: _showQuote,
                  icon: Icon(Icons.wb_sunny),
                  label: Text("Next Quote", style: TextStyle(
                    fontSize: 18.8,
                    color: Colors.white,
                  ),)),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
   void _showQuote() {
    setState(() {
      _index +=1;
    });

   }
}


