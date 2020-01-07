
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_samples/scene/quiz/QuizWidget.dart';
import 'package:flutter_samples/scene/title/TitleBLoC.dart';

class TitleWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TitleBLoC(),
      child: Scaffold(
        body: BlocBuilder<TitleBLoC, int>(
          builder: (context, state){
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min, ///
                children: <Widget>[
                  Text("英単語帳"),
                  _startButton(context),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  /// STARTボタン
  Widget _startButton(context){
    return RaisedButton(
        child: Text("START"),
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              settings: RouteSettings(name: "/quiz"),
              builder: (BuildContext context) => QuizWidget(),
            ),
          );
        }
    );
  }
}
