import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: _Content(),
    );
  }
}

class _Content extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContentState();
  }
}

class _ContentState extends State<_Content> {
  int name = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(22.0),
          child: Text(
            'Top Story',
            style: Theme.of(context)
                .textTheme
                .display1
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.only(left: 22.0, top: 12.0, bottom: 12.0),
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.42,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.42,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.42,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.42,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.42,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(22.0),
          child: Text(
            'For you',
            style: Theme.of(context)
                .textTheme
                .display1
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        ListView.builder(
            padding: EdgeInsets.only(left: 22.0, top: 12.0),
            shrinkWrap: true,
            primary: false,
            itemCount: 30,
            itemBuilder: (_, int index) {
              final wordPair = WordPair.random();
              String word = wordPair.asPascalCase;
              return ListTile(
                title: Text('Lorem Ipsum, $word'),
                trailing: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    color: Colors.pinkAccent,
                    width: 72.0,
                  ),
                ),
              );
            })
      ],
    );
  }
}
