import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_samples/scene/title/TitleBLoC.dart';

class QuizWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TitleBLoC(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Basic AppBar'),
        ),
        drawer: Drawer(),
        body: BlocBuilder<TitleBLoC, int>(
          builder: (context, state) {
            return SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    height: 240.0,
                    width: double.infinity,
                    color: Colors.amber,
                    child: Center(
                      child: Text("問題領域"),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 88.0,
                        width: double.infinity,
                        color: Colors.greenAccent,
                        child: FlatButton(
                          child: Text("Button"),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        height: 88.0,
                        width: double.infinity,
                        color: Colors.lightGreen,
                        child: FlatButton(
                          child: Text("Button"),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        height: 88.0,
                        width: double.infinity,
                        color: Colors.green,
                        child: FlatButton(
                          child: Text("Button"),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
