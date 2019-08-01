import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      initialRoute: '/First',
      routes: {
        '/First': (context) => FirstPage(),
        "/Second": (context) => SecondPage()
      },
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第一页"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("跳转到第二页"),
          onPressed: () {
            _navigateToSecondPage(context);
          },
        ),
      ),
    );
  }
  _navigateToSecondPage(BuildContext context) async {
    dynamic customArgumnets = await Navigator.pushNamed(context, '/Second',
        arguments: CustomArgumnets('Android进阶之光'));
    print(customArgumnets.content);
  }
  _navigateToSecondPage(BuildContext context) async {
    dynamic customArgumnets = await Navigator.pushNamed(context, '/Second',
      arguments: CustomArgumnets('Android进阶之光'));
    print(customArgumnets.content)  
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CustomArgumnets customArgumnets = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("第二页"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('第一页的数据为：'),
            Text(customArgumnets.content),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context,CustomArgumnets('Android进阶解密'));
              },
              child: Text('返回第一页'),
            ),
          ],
        ),
      ),
    );
  }
}
class CustomArgumnets {
  String content;
  CustomArgumnets(this.content);
}