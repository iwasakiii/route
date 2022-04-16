import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'MainModel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('アルタイル'),
          ),
          body: Consumer<MainModel>(
            builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [
                    Text(
                      model.MyName,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    ElevatedButton(
                      child: Text('Botton'),
                      onPressed: () {
                        model.changeMyName();
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
