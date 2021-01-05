import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quates/quotes.dart';

class QuoteCard extends StatelessWidget {
  final Quotes quote;
  final Function delete;

  QuoteCard({this.quote,  this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(color: Colors.grey[600], fontSize: 18),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 14,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            FlatButton.icon(onPressed: delete, label: Text('Delete'),icon: Icon(Icons.delete),)
          ],
        ),
      ),
    );
  }
}
