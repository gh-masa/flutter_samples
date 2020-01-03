
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_samples/scene/TitleBLoC.dart';

class TitleWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TitleBLoC(),
      child: Scaffold(
        body: BlocBuilder<TitleBLoC, int>(
          builder: (context, state){
            return Center(
              child: Text("Title"),
            );
          },
        ),
      ),
    );
  }

}
