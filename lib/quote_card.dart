import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quotes.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          Card(
          color: Colors.grey[800],
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    quote.text,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Align(
                    alignment: Alignment(1.0,0.0),
                    child: FlatButton.icon(
                      onPressed: delete,
                      label: Text(''),
                      icon: Icon(Icons.delete_outline_sharp, color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          ),
        Divider(height: 10.0, color: Colors.amber),
      ],
    );

  }
}