import 'package:flutter/material.dart';

class Home extends StatefulWidget {
    @override
    _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.blue.shade400,
            appBar: AppBar(
                backgroundColor: Colors.blue.shade800,
                //textColor: Colors.blue,
                centerTitle: true,
                actions: <Widget>[],
                title: Text("Friendly SWOT"),
            ), 
            body: Container(
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Container(
                            height: 200,
                            width: 200,
                            child: Text("Welcome to Friendly SWOT app!", 
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 30),
                            ),
                        ),
                        ElevatedButton(
                            style: TextButton.styleFrom(backgroundColor: Colors.blue.shade800),
                            //height: 200,
                            onPressed: () {
                                Navigator.of(context).pushNamed("secondHome");
                            },
                            child: Text('Take care of your projects and employees now!'),
                        )
                    ]
                )
            )
        );
    }
}