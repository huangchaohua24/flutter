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

import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScaffld(),
    );
  }
}
return Scaffold(
      appBar: AppBar(
        title: Text('AppBar示例'),
        leading: FlutterLogo(colors: Colors.lightGreen),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              print('添加按钮');
            },
          ),
        ],
      ),
    );
class MyScaffld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar),
        leading: FlutterLogo(colors: Colors.lightGreen),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              print('tj')
            }
          )
        ]
      )
    )
  }
}






import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code';
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: MyStatefulWidget(),
    )
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();//1
}

class MyStatefulWidget extends StatefulWidget{
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widget = <Widget>[
    Text(
      'Index 0:首页',
    ),
    Text(
      'Index 1: 通讯录',
    ),
    Text(
      'Index 2: 设置',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar示例'),
      ),
      body: Center(
        child: _widget.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text('通讯录'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            title: Text('设置'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped, //2
      ),
    );
  }
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar示例')
      ),
      body: Center(
        child: _widget.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: bottomNavigationBar(
        items: const <BottomNavigationBar>[
          BottomNavigationBar(
            icon: Icon(Icon.home),
            title: Text('首页')
          ),
          BottomNavigationBar(
            icon: Icon(Icon.contacts),
            title: Text('设置')
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped
      )
    )
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    })
  }
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>{
  int _selectedIndex = 0;
  static const List<Widget> _widget = <Widget>[
    Text(
      'Index 0: home'
    ),
    Text(
      'Index 1: txl'
    )
  ];
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTabController(),
    );
  }
}
class MyTabController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('DefaultTabController示例'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: '热点',
              ),
              Tab(
                text: '体育',
              ),
              Tab(
                text: '科技',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(child: Text('热点')),
            Center(child: Text('体育')),
            Center(child: Text('科技')),
          ],
        ),
      ),
    );
  }
}
class MyTabController extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('DefaultTabController'),
          bottom: TabBar(
            tabs: <Widget>[
              tab(
                text: 'rd'
              ),
              tab(
                text: 'tiyu'
              )
            ]
          )
        ),
        body: TabBarView(
          children: <Widget>[
            Center(child: Text('rd')),
            Center(child: Text('tiyu'))
          ]
        )
      )
    )
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> with SingleTickerProviderStateMixin {
  TabController _tabController;
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  TabController _tabController;
  void initState(){
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('自定义TabController'),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              text: '热点',
            ),
            Tab(
              text: '体育',
            ),
            Tab(
              text: '科技',
            ),
          ],
          controller: _tabController,//1
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(child: Text('热点')),
          Center(child: Text('体育')),
          Center(child: Text('科技')),
        ],
      ),
    );
  }
    @override
    void dispose() {
      _tabController.dispose();
      super.dispose();
    }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView示例'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('第1行'),
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('第2行'),
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

void main() => runApp(MyApp(
      items: new List<String>.generate(300, (i) => "第$i行"), //1
    ));

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({@required this.items});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView示例'),
        ),
        body: ListView.builder( //2
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.access_time),
              title: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}

void main() => runApp(MyApp(
  items: new List<String>.generate(300, (i) => '$i')
));
class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({@required this.items});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView')
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
            return ListTile(
              leading: Icon(Icons.access_time),
              title: Text('${items[index]}')
            )
          }
        )
      )
    )
  }
}