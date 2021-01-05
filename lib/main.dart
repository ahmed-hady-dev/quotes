import 'package:flutter/material.dart';
import 'package:quates/quote_card.dart';
import 'package:quates/quotes.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
      debugShowCheckedModeBanner: false,
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quotes> quotes = [
//    Quotes(
//        author: '- Thomas Mann',
//        text:
//            '“A writer is someone for whom writing is more difficult than it is for other people.”'),
//    Quotes(
//        author: '- Louisa May Alcott',
//        text:
//            '“I\'ve got the key to my castle in the air, but whether I can unlock the door remains to be seen.”'),
    Quotes(
        author: '- Robertson Davies',
        text: '“Quiet people have the loudest minds.”'),
    Quotes(
        author: '- Stephen King',
        text:
            '“The most intriguing people you will encounter in this life are the people who had insights about you, that you didn\'t know about yourself.”'),
    Quotes(
        author: '- Dr Roopleen,',
        text:
            '“Authors like cats because they are such quiet, lovable, wise creatures, and cats like authors for the same reasons.”'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quote'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
