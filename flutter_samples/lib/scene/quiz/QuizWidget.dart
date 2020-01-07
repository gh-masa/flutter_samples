

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_samples/scene/title/TitleBLoC.dart';

class QuizWidget extends StatelessWidget {

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
                  Text("問題"),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
