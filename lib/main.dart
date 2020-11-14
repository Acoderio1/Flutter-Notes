import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;
  List<Quote> quotes = [
    Quote(text: 'Example Note'),
  ];
  var qo;
  var q = new TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Notes'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            qo = q.text;
            quotes.add(Quote(text:'$qo'));
            q.clear();
          });
        },
        child: Icon(Icons.add, color: Colors.amber,),
        backgroundColor: Colors.grey[850],
      ),
      body: ListView(
          children: <Widget>[
            Column(
              children: quotes.map((quote) => QuoteCard(
                  quote: quote,
                delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                },
              )).toList(),
            ),
            TextField(
              controller: q,
              decoration: InputDecoration(
                hintText: '....',
                hintStyle: TextStyle(color: Colors.amber, fontSize: 30.0),
              ),
              style: TextStyle(
                color: Colors.amber,
              ),
            ),
          ],
        ),
    );
  }
}




