import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'შოთა რუსთაველი',
        text: 'ასი ათასსა აჯობებს, თუ გამორჩევით მქმნელია.'),
    Quote(
        author: 'შოთა რუსთაველი',
        text: 'ბოროტსა სძლია კეთილმან, — არსება მისი გრძელია!'),
    Quote(
        author: 'შოთა რუსთაველი',
        text: 'გველსა ხვრელით ამოიყვანს ენა ტკბილად მოუბარი.'),
    Quote(author: 'შოთა რუსთაველი', text: 'გრძელი სიტყვა მოკლედ ითქმის.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
      ),
    );
  }
}
